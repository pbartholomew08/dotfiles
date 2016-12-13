;;; .emacs --- emacs configuration file
;; 
;; Filename: .emacs
;; Description: This file is run at emacs startup.
;; Author: Paul Bartholomew
;; Maintainer: Paul Bartholomew
;; Created: Tue Dec 13 09:11:59 2016 (+0000)
;; Version: 0.0
;; Package-Requires: ()
;; Last-Updated: Tue Dec 13 17:33:32 2016 (+0000)
;;           By: Paul Bartholomew
;;     Update #: 9
;; URL: 
;; Doc URL: 
;; Keywords: 
;; Compatibility: 
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;;; Commentary: 
;; 
;; 
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;;; Change Log:
;;
;;  [13-Dec-2016] Moving to use header2 to control file changes.
;;  [13-Dec-2016] Adding some of the 'old' config files to bootstrap.
;;  [12-Dec-2016] Initialising with Cask and Pallet.
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or (at
;; your option) any later version.
;; 
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;; 
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;;; Code:
 
;;=================================================================================================
;; Cask and pallet: better package management
(require 'cask "/home/paul/.cask/cask.el")
(cask-initialize)

(require 'pallet)
(pallet-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; What follows is using the old packages to bootstrap behaviours

;;=================================================================================================
;; Loading old config files during transition
(add-to-list 'load-path "~/src/emacs_config_old")

(require 'emacs_appearance)
(require 'emacs_behaviour)

(require 'my_org)

;;-------------------------------------------------------------------------------------------------
;; header2
;; Updating headers
(autoload 'auto-update-file-header "header2")
(add-hook 'write-file-hooks 'auto-update-file-header)

;; Creating headers on new files
(autoload 'auto-make-header "header2")
(add-hook 'emacs-lisp-mode-hook 'auto-make-header)

;;=================================================================================================
;; evil should be configured last
(require 'my_evil)

(provide '.emacs)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; .emacs ends here
