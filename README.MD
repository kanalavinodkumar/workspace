## Workspace


![alt text](workspaces.avif)


* #### To show current workspace<br/>
    <ins>cmd</ins>: terraform workspace show<br/>
    <ins>o/p</ins>: default<br/>

* #### To create a new workspace<br/>
    <ins>cmd</ins>: terraform workspace new dev<br/>
    <ins>o/p</ins>: Created and switched to workspace "dev"!<br/>

    <ins>cmd</ins>: terraform workspace new qa<br/>
    <ins>o/p</ins>: Created and switched to workspace "qa"!<br/>

   <ins>cmd</ins>: terraform workspace new prod<br/>
    <ins>o/p</ins>: Created and switched to workspace "prod"!<br/>

* #### To show all available workspace<br/>
    <ins>cmd</ins>: terraform workspace list<br/>
    <ins>o/p</ins>: <br/>
    default<br/>
    dev<br/>
    qa<br/>
    prod<br/>

* #### To switch between workspace<br/>
    <ins>cmd</ins>: terraform workspace select dev<br/>
    <ins>o/p</ins>: Switched to workspace "dev".