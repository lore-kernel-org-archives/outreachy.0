X-GM-THRID: 6394057541861507072
X-Received: by 10.31.139.204 with SMTP id n195mr3157584vkd.24.1488789655391;
        Mon, 06 Mar 2017 00:40:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls13705997otx.21.gmail; Mon, 06 Mar
 2017 00:40:54 -0800 (PST)
X-Received: by 10.237.49.81 with SMTP id 75mr5247224qtg.44.1488789654809;
        Mon, 06 Mar 2017 00:40:54 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id u12si1250652pfd.3.2017.03.06.00.40.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 00:40:54 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id o126so10677520pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 00:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=Y7kOkc/TFVp+1yFtC2MEIui3rcl9WNfG6jWh5AQpIRA=;
        b=iht4PMDBpITq/U7vQQrJzqR2LnGedZPi/n9SX+2pExoN0CbfAC5zlCr3YnMgyaayCo
         XsC5/sCmDU39hQocK3fGnKlsND4nUvtaC9h9dwNAE8go8RmwGEfWn6HH5Fuctl8hROnq
         KmIPutL4WSiiZtGoxjYijEHWmxpTRSv2DG6gdpPVcEXn2hzxtPQb7ToTSe4pn07lTQKL
         Kj7RqKzuyRCsSGqk5bU6nBCICAji8I8UqBx2brMDCsw+cRmbGFm/z7LN86aeanKnCUhE
         j73YmvS3F8lscRRWf7XsferZH32Ug46CH5i4peEn4ArYaB9WU4WNAhS0BXm41T0TK9KH
         SWWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=Y7kOkc/TFVp+1yFtC2MEIui3rcl9WNfG6jWh5AQpIRA=;
        b=VqMyrK/oQIZhtB5Yhb/XCnad/8O67jd6KvGwC3Ql9n1JX+i4tJNT/tzeeediYopWcX
         fJpiavuEUIazwdCIK/fwpYYUTzu36HMfRoDWOwWfe/CbZf64D/at4oLWMFKTQYNJtDh3
         4xbSr6rwmQOnJ35g5hwn69oIIykkyHftHS2gmS097AzXa3mpikVlyzc63dJ0KiAhd1eq
         wLbTjoH799StTWYXKaBpWnUq1CIwkLoYzpdSTtM8nNfFkvbxvVNelWfp6nRsAQZNFvi8
         qoghUXy7zk6G8CZgn0nsyModcAflcAO/7x5s22gntzu+PjNc6SBy7x31KC7/MyghdHKg
         bABw==
X-Gm-Message-State: AMke39m2fn76lT8O/THYRsCZ113lcL5+/3a9vLAQ+nDKx7h3jvNU43T+SoFjO5vtYSDi/A==
X-Received: by 10.98.211.143 with SMTP id z15mr19686619pfk.46.1488789654475;
        Mon, 06 Mar 2017 00:40:54 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.163])
        by smtp.gmail.com with ESMTPSA id m6sm37784224pfg.126.2017.03.06.00.40.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 00:40:53 -0800 (PST)
Date: Mon, 6 Mar 2017 14:10:29 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Coccinelle tasks
Message-ID: <20170306084029.GA28528@aishwarya>
References: <888e8142-ac49-424e-b3ca-ea308f66330a@googlegroups.com>
 <alpine.DEB.2.20.1703051751230.3052@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <alpine.DEB.2.20.1703051751230.3052@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 05, 2017 at 05:58:10PM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 5 Mar 2017, Aishwarya Pant wrote:
> 
> > Hi
> > I would like to work on a Coccinelle task, but I'm not sure how to go
> > forward.
> > - I ran a sudo apt-get install coccinelle
> > - And then ran �spatch --sp-file scripts/coccinelle/misc/bugon.cocci
> > drivers/staging/dgnc/* -D report
> 
> Don't use * in a file name when you run Coccinelle.  That will cause it to
> consider all the files at once, which will lead to bad memory usage.  What
> you want is to consider the files one at a time, which is done by just
> putting the directory name, ie what you have but with no /*
> 
> >
> > The output of all scripts I've run has been something like this-
> >
> > init_defs_builtins: /usr/lib/coccinelle/standard.h
> > HANDLING: drivers/staging/dgnc/dgnc_cls.c drivers/staging/dgnc/dgnc_cls.h
> > drivers/staging/dgnc/dgnc_driver.c drivers/staging/dgnc/dgnc_driver.h
> > drivers/staging/dgnc/dgnc_mgmt.c drivers/staging/dgnc/dgnc_mgmt.h
> > drivers/staging/dgnc/dgnc_neo.c drivers/staging/dgnc/dgnc_neo.h
> > drivers/staging/dgnc/dgnc_pci.h drivers/staging/dgnc/dgnc_tty.c
> > drivers/staging/dgnc/dgnc_tty.h drivers/staging/dgnc/dgnc_utils.c
> > drivers/staging/dgnc/dgnc_utils.h drivers/staging/dgnc/digi.h
> > drivers/staging/dgnc/Kconfig drivers/staging/dgnc/Makefile
> > drivers/staging/dgnc/TODO
> 
> Actually, you can see what I just said in this output.  It is considering
> all of the files at once.
> 
> > How can I run coccinelle scripts to detect issues and write some of my own
> > (same as coccinelle tasks?) ?
> 
> If the above was the only output, then there was nothing for Coccinelle to
> do on your code.  If Coccinelle finds something to change, it will emit a
> patch.  The patch comes on standard output and the above HANDLING stuff
> comes out on standard error.
> 
> I would suggest to work through the tutorial at the top of the Coccinelle
> tasks page.  I can't get to the kernelnewbies page at the moment, but the
> link should be there somewhere.  Alternatively:
> 
> slides: http://coccinelle.lip6.fr/papers/tutorial.pdf
> video: https://www.youtube.com/watch?v=buZrNd6XkEw (quite optional)

Thanks for the references Julia.

I am now facing some issues running coccicheck. I run the command as:

make coccicheck MODE=report M=drivers/staging/vc04_services/ --debug

After issuing some warnings the process fails with the message:

773 777
coccicheck failed


> julia
> 
> > Thanks
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/888e8142-ac49-424e-b3ca-
> > ea308f66330a%40googlegroups.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >


