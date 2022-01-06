(local core (require :core))
(local Command-view (require :core.commandview))
(local Doc-view (require :core.docview))
(local Root-view (require :core.rootview))

(fn save-all []
  (each [_ node (ipairs (core.root_view.root_node:get_children))]
    (when (and (node:is Doc-view) node.doc.filename (node.doc:is_dirty))
      (core.log "Saved doc \"%s\"" node.doc.filename)
      (node.doc:save))))

(local on-focus-lost Root-view.on_focus_lost)

(fn Root-view.on_focus_lost [self ...]
  (save-all)
  (on-focus-lost ...))
