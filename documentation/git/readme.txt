On Liux cloud compute server:

Followed this article https://www.linux.com/learn/tutorials/796387-beginning-git-and-github-for-linux-users/
to create and use a repository for the child themes

The commands are as follows:
Determined from the below command that this is a Debian instalation
  447  uname -a

Install the git client (from https://git-scm.com/download/linux)
  449  sudo apt-get install git

Tested by running the git command and get the git help output
  450  git

Create the repository directory
  452  mkdir git-repos

Get the reporitory over
  453  cd git-repos/
  454  git clone https://github.com/Filmiya/all.git
  456  ls -alt all

Validating that the reporistoy is indeed there
  457  pwd
  458  cd git-repos/
  459  ls
  460  cd all
  461  ls
  462  cd scripts/
  463  ls
  464  cd bash/
  465  ls
  466  ls -alt
  467  cd ../..

Determinieng the "base" code that will be changed
In this case, th ebase code is all files under /var/www/html/wp-contnent/themes/thentytwelve-child and
the directory structure itself
  468  ls -alt /var/www/html/wp-content/themes/twentytwelve-child/
  469  ls -alt
  470  pwd
  471  cd /

Creating (in root) a zip
  473  sudo tar -cvzf themes.tgz /var/www/html/wp-content/themes/twentytwelve-child/*
  474  cd -

Creating and validating the structure now under the all repository
  480  sudo tar -xvzf /themes.tgz
  481  ls

Creating the branch wordpress and checking status
  482  git checkout -b wordpress
  483  git status

Adding everything under var and checking status
  484  git add var
  485  git status

Committing var
  486  git commit var

Setting global parameter to be used
  487  git config --global user.email "piyush_mehta@yahoo.com"
  488  git config --global user.name "dntrply - Google Cloud"

  493  git log --branches --not --remotes


Push the changes back
  494  git push origin wordpress

Perform the merge to master on the github website (https://github.com/Filmiya/all.git)

Now get the  master
  497  git pull origin master

Delete the wordpress branch
  498  git branch -d wordpress
  500  git status

In this case, the delelte failed - so I needed to first delete the var directory
  501  rm -rf var
  502  sudo rm -rf var
  503  sudo git pull origin master
  504  git branch -d wordpress
  505  sudo git pull origin master

Now trying to make more changes
  506  git branch addocumentation
  507  git status
  508  git checkout -b adddocumentation
  509  git status
  510  cd documentation/
  511  cd git/
  512  ks
  513  ls
  514  history >> readme.txt
  515  sudo history >> readme.txt
  516  sudo history >> history.txt
  517  sudo history >> /tmp/history.txt
  518  history >> /tmp/history.txt





All commands for the record:
    1  exit
    2  pwd
    3  cd /opt
    4  ls
    5  cd c2d
    6  ls
    7  more wordpress-setup.sh 
    8  sudo more wordpress-setup.sh 
    9  cd /var/www
   10  cd html
   11  ls
   12  find . -name header.php
   13  cd ./wp-content/themes/twentyfifteen/
   14  ls
   15  ls -alt | more
   16  vi header.php
   17  cd ..
   18  ls
   19  cd ..
   20  ls
   21  cd uploads/
   22  ls
   23  cd 2016
   24  ls
   25  cd 02
   26  ls
   27  cd ../..
   28  cd ..
   29  ls
   30  more index.php
   31  pwd
   32  cd ../..
   33  ls
   34  cd html
   35  ls
   36  more readme.html 
   37  ls
   38  more index.php 
   39  ls
   40  more index.php 
   41  cd ..
   42  ls
   43  cd/var
   44  cd /var
   45  ls
   46  cd www
   47  ls
   48  cdhtml
   49  pws
   50  cd /opt
   51  ls
   52  cd c2d
   53  ls
   54  more wordpress-setup.sh 
   55  sudo more
   56  sudo more wordpress-setup.sh 
   57  cd /etc/apache2
   58  ls
   59  cd sites-enabled/
   60  ks
   61  ls
   62  more wordpress.conf 
   63  ls
   64  find . -name header.php -print
   65  cd ..
   66  cd wp-con
   67  cd wp-content
   68  cd html
   69  cd wp-content/
   70  ks
   71  ls
   72  more index.php 
   73  cd plugins
   74  ls
   75  more index.php 
   76  ls
   77  cd ../
   78  ls
   79  cd ..
   80  ls
   81  ls -alt | more
   82  cd wp-content/
   83  ls -alt | more
   84  cd uploads/
   85  ls
   86  cd 2016
   87  ls
   88  cd 02
   89  ls
   90  cd ../..
   91  cd siteorigin-widgets/
   92  ls
   93  ls -alt | more
   94  grep site-header-main *.css
   95  grep site-header *.css
   96  cd ..
   97  ls
   98  cd ..
   99  ls
  100  cd plugins/
  101  ls
  102  pwd
  103  ls -alt
  104  cd siteorigin-panels/
  105  ls
  106  ls -alt | more
  107  cd css
  108  ls -alt | more
  109  grep -i site-header-main *.css
  110  cd ..
  111  ls
  112  cd ins
  113  cd inc
  114  ls
  115  grep -i site-header-main *.php
  116  cd ..
  117  ls
  118  cd ..
  119  find . -name header.php -print
  120  pwd
  121  cd .
  122  cd ..
  123  ls
  124  find . -name header.php -print
  125  ls
  126  cd plugins/
  127  cd /var/www
  128  cd html
  129  la
  130  ls -alt
  131  cd wp-content/
  132  ls -alt | more
  133  more index.php 
  134  cd ../..
  135  cd ..
  136  ls
  137  cd opt
  138  ls
  139  cd /opt
  140  ls
  141  cd ..
  142  ls
  143  pwd
  144  cd /var
  145  ls
  146  cd www/html
  147  ls
  148  cd wp-content/
  149  ls
  150  cd ..
  151  ls
  152  cd wp-a
  153  cd wp-admin/
  154  ls
  155  ls -alt | more
  156  more index.php 
  157  ls
  158  cd css
  159  ls
  160  ls -alt | more
  161  grep -i site-header-main *.php
  162  grep -i site-header-main *.css
  163  sudo grep -i site-header-main *.css
  164  cd ..
  165  ls
  166  grep -i site-header-main *.php
  167  cd ..
  168  l
  169  ls
  170  cd wp-includes/
  171  ls
  172  grep -i site-header-main *.php
  173  cd css
  174  grep -i site-header-main *.css
  175  cd ./customize-preview.
  176  cd ..
  177  cd customize/
  178  ks
  179  ls
  180  ls -alt | more
  181  grep -i site-header-main *.php
  182  cd ..
  183  ls -alt | more
  184  cd ,,
  185  cd ..
  186  ls -alt | more
  187  cd wp-includes/
  188  ls -alt | more
  189  ls -alt 
  190  ls -alt | more
  191  cd ..
  192  find . -name header.php -print
  193  find . -name style.css -print
  194  ls
  195  more index.php 
  196  more 
  197  more index.php 
  198  more wp-blog-header.php 
  199  ls
  200  cd /opt
  201  ls
  202  cd c2d
  203  ls
  204  more wordpress-setup.sh 
  205  sudo more wordpress-setup.sh 
  206  pwd
  207  cd /var/www/html
  208  ls
  209  cd wp-contnent
  210  cd wp-content
  211  ls
  212  cd themes
  213  ks
  214  ls
  215  sudo mkdir twentytwelve-child
  216  cd twentytwelvw
  217  cd twentytwelve
  218  ls
  219  cp style.css ../twentytwelve-child/
  220  sudo cp style.css ../twentytwelve-child/
  221  cd ../twentytwelve-child/
  222  sudo vi style.css 
  223  sudo cp ../twentytwelve/functions.php .
  224  vi functions.php 
  225  sudo vi functions.php 
  226  cd ../twentytwelve
  227  ls
  228  echo $SHELL
  229  cd ~
  230  ls
  231  ls -alt
  232  mor e.bashrc
  233  more .bashrc
  234  ls
  235  more .profile 
  236  mkdir binn
  237  rmdir binn
  238  mkdir bin
  239  cd bin
  240  vi cpfromparent.sh
  241  chod +x cpfromparent.sh 
  242  chmod +x cpfromparent.sh 
  243  ./cpfromparent.sh 
  244  cd ..
  245  cpfromparent.sh
  246  sh cpfromparent.sh
  247  ls
  248  ls -al
  249  source .profile
  250  cpfromparent.sh
  251  cd bin
  252  vi cpfromparent.sh 
  253  cpfromparent.sh  sad ad asd 
  254  vi cpfromparent.sh 
  255  cpfromparent.sh  sad ad asd 
  256  cpfromparent.sh
  257  vi cpfromparent.sh 
  258  cpfromparent.shh
  259  cpfromparent.sh
  260  vi cpfromparent.sh 
  261  cpfromparent.sh
  262  vi cpfromparent.sh 
  263  cpfromparent.sh
  264  vi cpfromparent.sh 
  265  cpfromparent.sh sd sd
  266  cpfromparent.sh sd
  267  vi cpfromparent.sh 
  268  cpfromparent.sh sd
  269  vi cpfromparent.sh 
  270  cpfromparent.sh sd
  271  vi cpfromparent.sh 
  272  cpfromparent.sh sd
  273  vi cpfromparent.sh 
  274  cpfromparent.sh sd
  275  vi cpfromparent.sh 
  276  cpfromparent.sh sd
  277  vi cpfromparent.sh 
  278  cpfromparent.sh sd
  279  vi cpfromparent.sh 
  280  cpfromparent.sh sd
  281  v
  282  vi cpfromparent.sh 
  283  cpfromparent.sh sd
  284  vi cpfromparent.sh 
  285  cpfromparent.sh sd
  286  vi cpfromparent.sh 
  287  fg
  288  vi cpfromparent.sh 
  289  cpfromparent.sh sd
  290  fg
  291  vi cpfromparent.sh 
  292  cpfromparent.sh sd
  293  vi cpfromparent.sh 
  294  cpfromparent.sh sd
  295  vi cpfromparent.sh 
  296  cpfromparent.sh sd
  297  vi cpfromparent.sh 
  298  cpfromparent.sh sd
  299  vi cpfromparent.sh 
  300  cpfromparent.sh sd
  301  vi cpfromparent.sh 
  302  cpfromparent.sh sd
  303  vi cpfromparent.sh 
  304  cpfromparent.sh sd
  305  vi cpfromparent.sh 
  306  cpfromparent.sh sd
  307  fg
  308  cpfromparent.sh sd
  309  fg
  310  cpfromparent.sh sd
  311  fg
  312  cpfromparent.sh sd
  313  fg
  314  cpfromparent.sh sd
  315  fg
  316  cpfromparent.sh sd
  317  fg
  318  cpfromparent.sh sd
  319  fg
  320  cpfromparent.sh sd
  321  vi cpfromparent.sh 
  322  cpfromparent.sh sd
  323  vi cpfromparent.sh 
  324  cpfromparent.sh sd
  325  vi cpfromparent.sh 
  326  fg
  327  cpfromparent.sh sd
  328  fg
  329  cpfromparent.sh sd
  330  fg
  331  cpfromparent.sh sd
  332  fg
  333  vi cpfromparent.sh 
  334  fg
  335  cpfromparent.sh sd
  336  fg
  337  cpfromparent.sh sd
  338  fg
  339  cpfromparent.sh sd
  340  fg
  341  cpfromparent.sh sd
  342  fg
  343  cpfromparent.sh sd
  344  fg
  345  cpfromparent.sh sd
  346  fg
  347  cpfromparent.sh sd
  348  fg
  349  cpfromparent.sh sd
  350  fg
  351  cpfromparent.sh sd
  352  fg
  353  cpfromparent.sh sd
  354  fg
  355  cpfromparent.sh sd
  356  fg
  357  cpfromparent.sh sd
  358  fg
  359  cpfromparent.sh sd
  360  fg
  361  cpfromparent.sh sd
  362  fg
  363  cpfromparent.sh sd 
  364  cpfromparent.sh sd sdf
  365  cpfromparent.sh sd sdf af
  366  fg
  367  vi cpfromparent.sh 
  368  fg
  369  vi cpfromparent.sh 
  370  fg
  371  cpfromparent.sh sd sdf af
  372  fg
  373  cpfromparent.sh sd sdf af
  374  cpfromparent.sh sd 
  375  fg
  376  cpfromparent.sh sd 
  377  fg
  378  cpfromparent.sh sd 
  379  fg
  380  cpfromparent.sh sd 
  381  fg
  382  vi cpfromparent.sh 
  383  cpfromparent.sh sd 
  384  fg
  385  cpfromparent.sh sd 
  386  fg
  387  cpfromparent.sh sd 
  388  cpfromparent.sh sd
  389  cpfromparent.sh
  390  cpfromparent.sh gg
  391  fg
  392  cpfromparent.sh gg
  393  fg
  394  cpfromparent.sh gg fs
  395  fg
  396  cpfromparent.sh gg fs
  397  fg
  398  more cpfromparent.sh 
  399  vi cpfromparent.sh 
  400  cpfromparent.sh gg fs
  401  vi cpfromparent.sh 
  402  cpfromparent.sh gg fs
  403  vi cpfromparent.sh 
  404  cpfromparent.sh gg fs
  405  cpfromparent.sh gg
  406  fg
  407  cpfromparent.sh gg sd sd 
  408  cpfromparent.sh gg sd sdd
  409  cpfromparent.sh gg sd
  410  cpfromparent.sh ff
  411  more cpfromparent.sh 
  412  vi cpfromparent.sh 
  413  cpfromparent.sh page.php
  414  sudo cpfromparent.sh page.php
  415  vi cpfromparent.sh 
  416  cpfromparent.sh page.php
  417  more /var/www/html/wp-content/
  418  vi cpfromparent.sh 
  419  cpfromparent.sh page.php
  420  vi cpfromparent.sh 
  421  ls -alt /var/www/html/wp-content/twentytwelve/page.php
  422  cd /var/www/html/wp-content/
  423  ls
  424  cd -
  425  pwd
  426  cvi cpfromparent.sh 
  427  vi cpfromparent.sh 
  428  cpfromparent.sh page.php
  429  vi cpfromparent.sh 
  430  cpfromparent.sh page.php
  431  more /var/www/html/wp-content/plugins/twentytwelve
  432  ls /var/www/html/wp-content/plugins/twentytwelve
  433  ls /var/www/html/wp-content/plugins/
  434  vi cpfromparent.sh 
  435  cpfromparent.sh page.php
  436  ls /var/www/html/wp-content/themes/twentytwelve-child
  437  ls /var/www/html/wp-content/themes/
  438  ls -alt /var/www/html/wp-content/themes/
  439  sudo rm /var/www/html/wp-content/themes//twentytwelve-child:
  440  ls -alt /var/www/html/wp-content/themes/
  441  vi cpfromparent.sh 
  442  cpfromparent.sh page.php
  443  ls /var/www/html/wp-content/themes/twentytwelve-child
  444  git
  445  yuminstall git
  446  sudo yum install git
  447  uname -a
  448  sudo apt-get insatall git
  449  sudo apt-get install git
  450  git
  451  pwd
  452  mkdir git-repos
  453  cd git-repos/
  454  git clone https://github.com/Filmiya/all.git
  455  ls
  456  ls -alt all
  457  pwd
  458  cd git-repos/
  459  ls
  460  cd all
  461  ls
  462  cd scripts/
  463  ls
  464  cd bash/
  465  ls
  466  ls -alt
  467  cd ../..
  468  ls -alt /var/www/html/wp-content/themes/twentytwelve-child/
  469  ls -alt
  470  pwd
  471  cd /
  472  tar -cvzf themes.tgz /var/www/html/wp-content/themes/twentytwelve-child/*
  473  sudo tar -cvzf themes.tgz /var/www/html/wp-content/themes/twentytwelve-child/*
  474  cd -
  475  sudo tar -xvzf themes.tgz /var/www/html/wp-content/themes/twentytwelve-child/*
  476  sudo tar -xvzf themes.tgz
  477* ls/
  478  sudo tar -xvzf ./themes.tgz
  479  ls /
  480  sudo tar -xvzf /themes.tgz
  481  ls
  482  git checkout -b wordpress
  483  git status
  484  git add var
  485  git status
  486  git commit var
  487  git config --global user.email "piyush_mehta@yahoo.com"
  488  git config --global user.name "dntrply - Google Cloud"
  489  git add var
  490  git status
  491  git commit var
  492  git status
  493  git log --branches --not --remotes
  494  git push origin wordpress
  495  git checkout master
  496  sudo git checkout master
  497  git pull origin master
  498  git branch -d wordpress
  499  sudo git pull origin master
  500  git status
  501  rm -rf var
  502  sudo rm -rf var
  503  sudo git pull origin master
  504  git branch -d wordpress
  505  sudo git pull origin master
  506  git branch addocumentation
  507  git status
  508  git checkout -b adddocumentation
  509  git status
  510  cd documentation/
  511  cd git/
  512  ks
  513  ls
  514  history >> readme.txt
  515  sudo history >> readme.txt
  516  sudo history >> history.txt
  517  sudo history >> /tmp/history.txt
  518  history >> /tmp/history.txt
