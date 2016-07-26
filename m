X-GM-THRID: 6311696550049349632
X-Received: by 10.66.255.6 with SMTP id am6mr22202549pad.15.1469562377636;
        Tue, 26 Jul 2016 12:46:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.150 with SMTP id 22ls279588iot.17.gmail; Tue, 26 Jul
 2016 12:46:16 -0700 (PDT)
X-Received: by 10.98.22.149 with SMTP id 143mr21772989pfw.10.1469562376836;
        Tue, 26 Jul 2016 12:46:16 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-yw0-x244.google.com (mail-yw0-x244.google.com. [2607:f8b0:4002:c05::244])
        by gmr-mx.google.com with ESMTPS id d206si151754ywh.3.2016.07.26.12.46.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Jul 2016 12:46:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) client-ip=2607:f8b0:4002:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x244.google.com with SMTP id r9so2077898ywg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Jul 2016 12:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PhOf/bM/snUg+2i94G2PfdvymVvCiqhfyrVKxiEOoGE=;
        b=EL1Bews3Asi+1451/+yT64IatbK1YTJoz8w9ZRiClYLe2+1frXNg/JaRLmyYpkHPlo
         c6DpsaoZZel0kSMLy6qZHaXjNeqXnLuW2CVJVH9C9KjGXrerr33wu2UDyvqTTr7wx2ls
         9dND5VeSoFJ2ndfFyYP03mUVt5qL6PvtaGH2Ut5UvUb+2f5mANxCAAqPKKwZabj9DcCe
         FsbWNTJFEBkomr0KH/rpvIxrf+xW2vEXdwE/gzMDMoTSOmAE32Up4832q/FpUtYK3r01
         e2STWEvsYJpN3MBh+6E3pN5fdx7pzlsx2RiM2A7TmfoQazEzdp5N9az2kZo4m67ZIA3x
         tQVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PhOf/bM/snUg+2i94G2PfdvymVvCiqhfyrVKxiEOoGE=;
        b=XE7YtmMljWXwCgYVsIMkbkutPtBLtYMLdCq1/3cTte3NNx+jejK0xPAAZ8xwTpPr7f
         7y85XK+96q1umNN08NdvtyxDqKYmaYz99tyq+8Y3yGWkeuTzmfI0BATaRoKO467cjHJ9
         JZ1qLR5iTUAWbRrAHbO8Qw8KpQbxs+vPa0BtB/zVNCguktzTD1MUVlbD0OiUQeIuicK9
         6JbIRInWVzJSlA2ySb8aEXVa8Pt8dT+MrLUVb3LXKP6iPsLGrzq7qjQOj/d4ei79PLHn
         XDYNqa6zGAzJ6eHCWP28auopicMOXoIVQHgOgyC/k4GUMhyzEpYzt/8uVCZ/Qu86lPzA
         7hLg==
X-Gm-Message-State: AEkoout9Vj6EXaa0+OfdBYOe4+lFKemgMwFlM8Yy15cO0obehIwaSqyLlIxShHlX62l8vQ==
X-Received: by 10.129.159.207 with SMTP id w198mr22085256ywg.193.1469562376586;
        Tue, 26 Jul 2016 12:46:16 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (96-39-188-157.dhcp.mdfd.or.charter.com. [96.39.188.157])
        by smtp.gmail.com with ESMTPSA id 204sm1130808yww.9.2016.07.26.12.46.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Jul 2016 12:46:16 -0700 (PDT)
Date: Tue, 26 Jul 2016 12:46:14 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: courage angeh <courageangeh@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-newbie@vger.kernel.org
Subject: Re: [Outreachy kernel] commiting the .git/hooks/pre-commit and
 testing the changes on the updated e1000_main.c
Message-ID: <20160726194613.GA14874@d830.WORKGROUP>
References: <64c3385b-6ee7-44ac-bb17-e265d5f9ade8@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <64c3385b-6ee7-44ac-bb17-e265d5f9ade8@googlegroups.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Hi Courage ? ;)
I'll help you.  I'm an outreachy intern now. 

We need to move this thread over to linux-newbie mailing list, since
this outreachy list won't be active until the next application round.
Please 'cc linux-newbie on posts as I've done above.

See comments in line below.
alisons


On Tue, Jul 26, 2016 at 11:06:10AM -0700, courage angeh wrote:
> I am a newbie... just start recently preparing for the out reach program in 
> December.... i started at: https://kernelnewbies.org/Outreachyfirstpatch 
> but i have a number of difficulties:
> 1. After editx... ,  recompiling my driver, installing the changes and 
> rebooting my linux system . I tested the changes but i didn't find the 
> message " I can modify the Linux kernel!".... i contacted the irc 
> channel:#kernel-outreachy but i seemed not to exist.

Let's go step by step. 

Let's make sure you put in a printk that will get printed.
Let's make sure you've compiled the module.

Confirm you compiled the module...do you see a .ko with new timestamp?

Can you sudo modprobe <drivername> ?
Or sudo insmod drivername.ko ?

(at this point you don't need to keep rebooting the kernel.  We will
modprobe add/remove your driver.)

post what you have on the above items and I'll take a look.

> 2. i went ahead to creating the .git/hooks/pre-commit but when i try 
> staging and commiting the file i get the respective errors:
> 
> error: Invalid path '.git/hooks/pre-commit'
> error: unable to add .git/hooks/pre-commit to index
> fatal: adding files failed
> 
> and
> 
> error: pathspec 'First patch' did not match any file(s) known to git.
> 
> please some one help me out???

You are not submitted that pre-commit hooks file.  It lives in your
git tree to poke you went you make a submittal.

> 
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/64c3385b-6ee7-44ac-bb17-e265d5f9ade8%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.


