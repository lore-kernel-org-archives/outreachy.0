X-GM-THRID: 6394057541861507072
X-Received: by 10.157.9.138 with SMTP id q10mr6076267otd.21.1488802881296;
        Mon, 06 Mar 2017 04:21:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.34 with SMTP id n31ls15129002ota.4.gmail; Mon, 06 Mar
 2017 04:21:20 -0800 (PST)
X-Received: by 10.129.174.1 with SMTP id m1mr5031690ywh.64.1488802880898;
        Mon, 06 Mar 2017 04:21:20 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 207si434pfu.8.2017.03.06.04.21.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 04:21:20 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 67so13095251pfg.2
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 04:21:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=e3CgDqpRwiZMX8XHGtYhfz6FQuco7TaPrtd/HrZ0bok=;
        b=kkyetCRQXOolrxsyqTgx5MUnM87g++qrQZDKLaem03JXOPcZ4+BawUpf2eJXD049ja
         E8dgwG6a2szYZXIwNnmJc3B2oBW87FI4YAONGIRdoRz4yOAS1rIvGJMBsGBdrpBdj9OD
         Ss/XU5i3rEcKl6ex7sJxhgTsn/xOsPYRiSpjtg7xq0iT2N1GdIHXsnUEHrR6OrXBdZHh
         vi6owqPEXjEeoIFtDrkC1M1IkGItJPcWbifshrC5zTA5wJeoe3JQRRBThYs0N6k/7XQy
         S5kk0zlkAVwgDCbwOTIThGESSdXmygTND3yLv4D7jc6ohJhN7MKnMVxGC5XssWqz3Fzc
         uYkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=e3CgDqpRwiZMX8XHGtYhfz6FQuco7TaPrtd/HrZ0bok=;
        b=YmJiI8GyKMJlvdUvfU8gSizfrE5XlJJZ2+wemmHoPCRmo5aW3ggrVVAD5Az1vl8xvM
         t1wHMyUioOVC4Zhe7atZCj4pmAT7LS5GvIOhdrtcTbr6f7BJvYFG/2QQF4A+T7xp08n+
         epMldn5J5SYLJSzKia5VjAMDh1ZTR2hNv+ypySQN4yZdcSpnb5EXZxT3DY/EZpMKXZE1
         v+ihzfBIZy3j+gqiWaE3pn+AVnlU8Mof1qNAe7A61sQHqTMhFN+JKcLYWzQSVWwUFuV6
         q/OY0EKk4WyAR+Kq+p+TMKdj/ljlPfMtojqLG5paM5hkuPmaq02L3Npvvuiu4ll2kzcA
         DWOw==
X-Gm-Message-State: AMke39lbaYAxuhsqdT2kdwdLWm9EZgxb7Z32VLEgUJp2pkOWDkSFvdnAuwDlqz0cqLOCgA==
X-Received: by 10.84.172.1 with SMTP id m1mr25487018plb.5.1488802880575;
        Mon, 06 Mar 2017 04:21:20 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.163])
        by smtp.gmail.com with ESMTPSA id z27sm39398575pfg.38.2017.03.06.04.21.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 04:21:19 -0800 (PST)
Date: Mon, 6 Mar 2017 17:51:13 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Coccinelle tasks
Message-ID: <20170306122113.GA19928@aishwarya>
References: <888e8142-ac49-424e-b3ca-ea308f66330a@googlegroups.com>
 <alpine.DEB.2.20.1703051751230.3052@hadrien>
 <20170306084029.GA28528@aishwarya>
 <alpine.DEB.2.20.1703061242480.3078@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <alpine.DEB.2.20.1703061242480.3078@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Mar 06, 2017 at 12:43:39PM +0100, Julia Lawall wrote:
> 
> 
> On Mon, 6 Mar 2017, Aishwarya Pant wrote:
> 
> > On Sun, Mar 05, 2017 at 05:58:10PM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Sun, 5 Mar 2017, Aishwarya Pant wrote:
> > >
> > > > Hi
> > > > I would like to work on a Coccinelle task, but I'm not sure how to go
> > > > forward.
> > > > - I ran a sudo apt-get install coccinelle
> > > > - And then ran �spatch --sp-file scripts/coccinelle/misc/bugon.cocci
> > > > drivers/staging/dgnc/* -D report
> > >
> > > Don't use * in a file name when you run Coccinelle.  That will cause it to
> > > consider all the files at once, which will lead to bad memory usage.  What
> > > you want is to consider the files one at a time, which is done by just
> > > putting the directory name, ie what you have but with no /*
> > >
> > > >
> > > > The output of all scripts I've run has been something like this-
> > > >
> > > > init_defs_builtins: /usr/lib/coccinelle/standard.h
> > > > HANDLING: drivers/staging/dgnc/dgnc_cls.c drivers/staging/dgnc/dgnc_cls.h
> > > > drivers/staging/dgnc/dgnc_driver.c drivers/staging/dgnc/dgnc_driver.h
> > > > drivers/staging/dgnc/dgnc_mgmt.c drivers/staging/dgnc/dgnc_mgmt.h
> > > > drivers/staging/dgnc/dgnc_neo.c drivers/staging/dgnc/dgnc_neo.h
> > > > drivers/staging/dgnc/dgnc_pci.h drivers/staging/dgnc/dgnc_tty.c
> > > > drivers/staging/dgnc/dgnc_tty.h drivers/staging/dgnc/dgnc_utils.c
> > > > drivers/staging/dgnc/dgnc_utils.h drivers/staging/dgnc/digi.h
> > > > drivers/staging/dgnc/Kconfig drivers/staging/dgnc/Makefile
> > > > drivers/staging/dgnc/TODO
> > >
> > > Actually, you can see what I just said in this output.  It is considering
> > > all of the files at once.
> > >
> > > > How can I run coccinelle scripts to detect issues and write some of my own
> > > > (same as coccinelle tasks?) ?
> > >
> > > If the above was the only output, then there was nothing for Coccinelle to
> > > do on your code.  If Coccinelle finds something to change, it will emit a
> > > patch.  The patch comes on standard output and the above HANDLING stuff
> > > comes out on standard error.
> > >
> > > I would suggest to work through the tutorial at the top of the Coccinelle
> > > tasks page.  I can't get to the kernelnewbies page at the moment, but the
> > > link should be there somewhere.  Alternatively:
> > >
> > > slides: http://coccinelle.lip6.fr/papers/tutorial.pdf
> > > video: https://www.youtube.com/watch?v=buZrNd6XkEw (quite optional)
> >
> > Thanks for the references Julia.
> >
> > I am now facing some issues running coccicheck. I run the command as:
> >
> > make coccicheck MODE=report M=drivers/staging/vc04_services/ --debug
> >
> > After issuing some warnings the process fails with the message:
> >
> > 773 777
> > coccicheck failed
> 
> I would need to see the entire output.

Output is:

GNU Make 4.1
Built for x86_64-pc-linux-gnu
Copyright (C) 1988-2014 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later
<http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
Reading makefiles...
Updating goal targets....
 File 'coccicheck' does not exist.
 Must remake target 'coccicheck'.

 Please check for false positives in the output before submitting a
 patch.
 When using "patch" mode, carefully review the patch before submitting
 it.

 drivers/staging/vc04_services//bcm2835-audio/bcm2835.c:224:3-8: No need
 to set .owner here. The core will do it.
 drivers/staging/vc04_services//interface/vchiq_arm/vchiq_core.c:912:2-8:
 preceding lock on line 856
 773 777
 coccicheck failed
 Successfully remade target file 'coccicheck'.

> 
> What version of Coccinelle do you have?

coccinelle:
  Installed: 1.0.4.deb-2


> 
> julia
> 
> >
> >
> > > julia
> > >
> > > > Thanks
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups
> > > > "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an
> > > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/888e8142-ac49-424e-b3ca-
> > > > ea308f66330a%40googlegroups.com.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> > > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170306084029.GA28528%40aishwarya.
> > For more options, visit https://groups.google.com/d/optout.
> >


