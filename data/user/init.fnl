(local keymap (require :core.keymap))
(local config (require :core.config))
(local style (require :core.style))

(require :user.colors.fall)

(keymap.add {;; Editing
             :ctrl+a "doc:move-to-start-of-line"
             :ctrl+e "doc:move-to-end-of-line"
             :ctrl+k "doc:delete-to-end-of-line"
             ;; Tabs
             :ctrl+pageup "root:switch-to-previous-tab"
             :ctrl+pagedown "root:switch-to-next-tab"
             :ctrl+shift+pageup "root:move-tab-left"
             :ctrl+shift+pagedown "root:move-tab-right"})
