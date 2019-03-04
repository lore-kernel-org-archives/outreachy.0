X-GM-THRID: 6663863789016842240
X-Received: by 2002:a63:d50:: with SMTP id 16mr7538920pgn.68.1551715614405;
        Mon, 04 Mar 2019 08:06:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:a041:: with SMTP id u1ls6394063pgn.0.gmail; Mon, 04 Mar
 2019 08:06:53 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYvri9pdlSRiaO8ZTgobRXRKmL9ChkWl4K54HVc8dg5rm6phZZVzJhwxWVONXUwThjjy4xC
X-Received: by 2002:a62:4855:: with SMTP id v82mr7290556pfa.51.1551715613520;
        Mon, 04 Mar 2019 08:06:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551715613; cv=none;
        d=google.com; s=arc-20160816;
        b=SiodIm2TLUa5XfvKBbIdNsTNwvLmFLAe8yASoqBZjOOv7Z83EKq3T6LiZiTNw0rYE1
         JmLklmbMXXdplB+fje1WAjHyxBDwYgtHAML3aHrgMPuiStHJQ9iMIapa1DHZPVX7mHAE
         XK22hyfCtx+hZL8QPsJV0z0BtybzV7KoY/4mdNAkTxoVSLSbsqZ89xbKgdmxLX37TRN4
         1qha43hpvP0DwyHyg4W7cfx6OnJI3GwBqpOXYcfhrFGvp8uDlO7Iu/4hV87TIBmgLH44
         nvy2qQKE0EqJFtu6w6VeMxfp9ffdDJKIxAHfpgvpDBm42Lzs03XC/xJdkI9RMqVa40IA
         0aQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=uTQ/YDFt+XrNJ3iKVnVwOE+Om7Db6MWg1ZrA0QGQF24=;
        b=eOhtBAMwrIoY2Py3yRwX4ykVfLty7HU7Ouv3IRBglteb+aeyjE7jZDJdfpoVOzHaUq
         mEKWHUBpGNv51pIAB/CN07+ndBKTmeNvV9k4NB/ohTvey6nHDJpLNqm40/5fTtwVXIVK
         gyAUPBlMUSpay0cL1qIKMxjl5fabTIKfvftPkbi1pGCzY4k36wuu2aZwzaI9rusPC5iC
         sfhL2KNCG/Ay2jzLcoqIuoNDuzwRgjv+njWeg960AHe+w1nr61z9Wop1P4sofxclUmA3
         YpuFTr1qa5G3ObZR0cctlV4wAOG5WkINBrn7DDPd73A5PLX8h72Ax6RDbA8Ios8212M4
         8HHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rd89XbWZ;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id r133si325906pgr.4.2019.03.04.08.06.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 08:06:53 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rd89XbWZ;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id q81so4233435oic.5
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 08:06:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=uTQ/YDFt+XrNJ3iKVnVwOE+Om7Db6MWg1ZrA0QGQF24=;
        b=rd89XbWZpSUmT5aonpWBx8Dbed5+PzILVt5iYAnr5qn+6lERRk0sQQT4EW4TZ0ziyz
         U31bHZ400uzsOdGt63l1rSERI2ZyenhSK+zWMKRqu0JARSeNltwAiSU4HoC3WxLFf80+
         zLVKApKBDesbVTe4Xm9c3o8w24ijWMDQOSwnW9E3SuetViDc0O/oFTjctpJMwrkTVbis
         u9ZWS9MHjAKuWfn/lyL6BW2CDXudtq6vm89o9dxsJxqHgegXlSRqp40zyxLk39TNI6Em
         GwOou8Dg6kzKz7+IaOH7PjbK1SERcwGBcPPhTvIuwvRzQ6iyVQh2NVL2qPRxUxA62x+c
         zceg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uTQ/YDFt+XrNJ3iKVnVwOE+Om7Db6MWg1ZrA0QGQF24=;
        b=HIW70Wxq/sKpib4lJPuJ+6n3x9q6gPBvQUn6lZEVDLu8YPHBVgcWWkgbk+l2HXgM+a
         KqSQdX1655QKz3n+6hRjz6F9qdAJuPB4XjtQyZRlkUjXTAoYpl42y/N33V43KU9tmuas
         dgs/oWPRZgdCrifDjJdmr5SRX2yzPzg3+/ia7h+Y64Zhgjgj1UUwqtionF0MsIy7hbtl
         0vbm9l9FHtEXlfDL7tbFLmVrDc8bbvBtXyMYbq7pr2oIqE0bhN1Fzx/nN51lV8Wo1x+g
         feQ2j5JdGUfbFEvf5JqVxIj6rO05SLkK70FWQ95W8jeLPi4mzxNDitJOOVixbTuxGgWn
         wIJQ==
X-Gm-Message-State: AHQUAuataFNNFBosf9jmggwXiN6dND96hSU2H7Qi+K+9LogCLmgQcJ0B
	tW9h6NxK3h3UsgjfYd19LQAULctHjCY=
X-Received: by 2002:aca:d805:: with SMTP id p5mr11732833oig.144.1551715613117;
        Mon, 04 Mar 2019 08:06:53 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id a62sm2932500otb.72.2019.03.04.08.06.52
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 04 Mar 2019 08:06:52 -0800 (PST)
Date: Mon, 4 Mar 2019 10:06:50 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 0/8] Fix checkpatch.pl issues
Message-ID: <20190304160649.GD20855@madhuleo>
References: <cover.1551550323.git.madhumithabiw@gmail.com>
 <20190303080915.GA712@kroah.com>
 <20190303183022.GA30916@madhuleo>
 <20190304074446.GA22711@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190304074446.GA22711@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 04, 2019 at 08:44:46AM +0100, Greg KH wrote:
> On Sun, Mar 03, 2019 at 12:30:23PM -0600, Madhumthia Prabakaran wrote:
> > On Sun, Mar 03, 2019 at 09:09:15AM +0100, Greg KH wrote:
> > > On Sat, Mar 02, 2019 at 12:34:42PM -0600, Madhumitha Prabakaran wrote:
> > > > These patches fix warnings of line over 80 characters, comment style
> > > > issues of SPDX License Identifier and remove unnecessary blank line.
> > > > 
> > > > Madhumitha Prabakaran (8):
> > > >   Staging: vt6655: card.h: Fix line over 80 character
> > > >   Staging: vt6655: card.h: Fix line over 80 characters
> > > >   Staging: vt6655: device.h: Fix comment style of SPDX License Identifier
> > > >   Staging: vt6655: device_cfg.h: Fix comment style of SPDX License Identifer
> > > >   Staging: vt6655: dpc.h: Fix comment style of SPDX License Identifier
> > > >   Staging: vt6655: key.h: Fix comment style of SPDX License Identifier
> > > >   Staging: vt6655: mac.c: Remove unnecessary blank line
> > > >   Staging: vt6655: mac.h: Fix comment style of SPDX License Identifier
> > > 
> > > Again, does not match the subject lines :(
> > > 
> > > Perhaps if you typed out here _exactly_ what you did to create this
> > > cover letter, and send them off to us, it might help in determining what
> > > you did wrong.
> > > 
> > > thanks,
> > > 
> > > greg k-h
> > 
> > Thanks
> > 
> > Task: commit patchsets, which contains two patches
> > 
> > 1. git log --pretty=oneline --abbrev-commit 
> > 
> > 8f8d8bbad6bc (HEAD -> staging-testing) Staging: vt6655: Fix ...
> > f68b96b7f7f5 Staging: vt6655: Fix comment ...
> > 
> > 08b9bee66e3e (origin/staging-testing, origin/staging-next) ...
> 
> Ah, the problem is you never changed the actual changelog text in the
> patch itself.  You need to do that.
> 
> > 2. Format-patch 
> > 
> > git format-patch -o /tmp/three/ --cover-letter -n --thread=shallow --cc="madhumithabiw@gmail.com" f68b96b7f7f5^..8f8d8bbad6bc
> > 
> > /tmp/three/0000-cover-letter.patch
> > /tmp/three/0001-Staging-vt6655-Fix-comment-style-of-SPDX-License-Ide.patch
> > /tmp/three/0002-Staging-vt6655-Fix-comment-style-of-SPDX-License-Ide.patch
> 
> See the subject line does not have the file name in it.
> 
> > 3. Format patch for versioning 
> > 
> > git format-patch -n --subject-prefix="PATCH v2" --cover-letter
> > 
> > On executing this, my subject prefix never changed. I assume, this is the issues. As this creates same version of subject line and clubs all version into same conversation. 
> 
> As discussed on irc, you don't need to use --subject-prefix.
> 
> Also, no need to call format-patch twice.
> 
> > 4. I manually edit the vim /tmp/three/0000-cover-letter.patch
> > 
> > 5. Edited the 'SUBJECT HERE'  and 'BLURB HERE'. Here too I noticed that the subject prefix never changed.. So i tried to edit it manually.
> >    I tried to change subject prefix for all the three files manually
> 
> Editing this file does not change the actual text in the patches
> themselves.
> 
> > 6. After that I tried using mutt and git to send files 
> > 
> > For git I used 
> > git send-email --to-cover --cc-cover /tmp/three/*.patch
> > 
> > For mutt I used 
> > mutt -H /tmp/third/0000......patch
> > For all three files I individually sent  it via mutt
> 
> Sending is fine.
> 
> Ok, you need to change the subject lines of your patch.
> 
> to do this, rebase the patches and edit the changelog text.  Look up how
> 'git rebase -i' works, with the "reword" option.  That will give you the
> chance to reword the changlog text to properly change the first line of
> the patches to contain the filenames.
> 
> Then do your step 3 and others and all should be good.
> 
> Hope this helps,
> 
> greg k-h

Thanks, I will fix it and resend it. 

Madhumitha


