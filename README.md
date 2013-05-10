Copyright 2013 hastexo Professional Services GmbH

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

WHAT IS THIS?!
##############

This is a vagrant multi-vm based lab for exploring iSCSI, OCFS2, and the linux-ha stack on Ubuntu Lucid.

INSTALL NOTES
#############

1. Install Virtualbox

   Go to https://www.virtualbox.org/wiki/Downloads , download and install the
   Virtualbox release appropriate for your platform

2. Install Vagrant

   Go to http://downloads.vagrantup.com/ and install the latest version of
   Vagrant for your platform

3. Install vagrant-vbguest

    $ vagrant plugin install vagrant-vbguest

4. Generate secrets for OCFS2 Lab

    $ rake gen_keys

5. Bring up the OCF2 lab

    $ vagrant up
