#! /bin/bash

echo "=============================================="
echo "              For🇰🇷Keyboard                 "
echo "=============================================="

if [ -f ~/Library/KeyBindings/DefaultkeyBinding.dict ];
then
  echo "Already DefaultkeyBinding.dict. exists."
else
  mkdir -p ~/Library/KeyBindings
  cat << EOF > ~/Library/KeyBindings/DefaultkeyBinding.dict
{
    "₩" = ("insertText:", "\`");
}
EOF
  echo "After reboot, You can enter \` instead of ₩."
fi
