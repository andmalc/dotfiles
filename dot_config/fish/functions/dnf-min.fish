function dnf-min --description 'dnf with weak dependencies' --argument-names package
     sudo dnf install --setopt install_weak_deps=False $package
end
