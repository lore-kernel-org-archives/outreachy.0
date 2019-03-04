X-GM-THRID: 6663863789016842240
X-Received: by 2002:a63:5142:: with SMTP id r2mr6571590pgl.144.1551685490213;
        Sun, 03 Mar 2019 23:44:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:2b87:: with SMTP id l7ls814661plb.8.gmail; Sun, 03
 Mar 2019 23:44:49 -0800 (PST)
X-Google-Smtp-Source: APXvYqxS62aK1ad5dekUfuNODWCH/52rhhLNq5zwWAApCT0faOkw2lZysfqlGS4xtXXkvh/Xeh0S
X-Received: by 2002:a17:902:2948:: with SMTP id g66mr5598524plb.0.1551685489511;
        Sun, 03 Mar 2019 23:44:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551685489; cv=none;
        d=google.com; s=arc-20160816;
        b=xQBMnPFjCWm9NE6zP7ZPaduqMlL2LJ/HeoK/hKQDvzvyxwUcyh7EqoJenO8BTt+C2S
         gYg7nW8/B9qryhQwAEd/zeI1Ita3G8v1+CktoRv1A5h4r1BvimWSfgW8woWdPiETLH0s
         jGIH5YdUXf/p16gqwkw61L/t0ulXsyCiU5tI5Sz2c46hwU0CLzxjXy0XEKy2ZUwf+IvH
         3fwwz7pLkSETx5dscst2yjivTwimtKqe13rCF4ZT8mvboFcqyEr9si1eJlgWntYSH+yV
         UOh0QNGEzqwi5DXfOgqgOMjU6RsF+slpqiYUJ4fohd7Vye0YeU3Ys+U6BCbUs8HTwB4b
         nLKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=MnCaLfPj5p5WqHXBd34wbJbwuCf3ZloTJ3DyBepksGc=;
        b=P36EjXUtCZQtvOybZ+kXGjsrVlftEksg7hScmQ9qRpuHNUbL9d4GpMFuAol4/XRHmm
         EdI1/LdJ/cESWXMoDMwaEHoQfTeIRUhoO5DdiP+AqOKGnFWwpAO8ec3gkl9HleDzcva8
         jLF4r4YjF1VoSKQcmr9KGGcpr4Qhf2DOeGE4ZD+huiRS5V0WmCU0JDuWRebTzRVvTxMX
         uoAnxMvKg3YukcVDYYQjmpONNL1ISMHXpePSI7hcWcJM7AJXAQjrpyA4ATVuIh4DQp7D
         gMvswHCy56qzbWfeD3I7rfDelvkhHEx8s57ckJluvRw6qk/SnX8Q/nU/lo3FcEXgv8R1
         RMnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=S3TG9Kg4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q17si297105pgb.1.2019.03.03.23.44.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 23:44:49 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=S3TG9Kg4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A6F2C20836;
	Mon,  4 Mar 2019 07:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551685489;
	bh=TDaGFnSvA95VI5qpR1VCXHTctvUh62lbqo1tQTwui60=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S3TG9Kg4IeGtSIJRGycg58wbRjLGLKt3zwrnGmUlMj6betkPxSv/B6tDw4XP4Cpk+
	 hevC8DtAesbHHM9AaR9X7/ua/O3amx90ViPpxJ/JpAGIx08OQhLXFXM4RrMQCbyUOa
	 k9+8cQZYnqfSUnnLntWzEAtd1ErAm+b4mq+dl83s=
Date: Mon, 4 Mar 2019 08:44:46 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 0/8] Fix checkpatch.pl issues
Message-ID: <20190304074446.GA22711@kroah.com>
References: <cover.1551550323.git.madhumithabiw@gmail.com>
 <20190303080915.GA712@kroah.com>
 <20190303183022.GA30916@madhuleo>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190303183022.GA30916@madhuleo>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sun, Mar 03, 2019 at 12:30:23PM -0600, Madhumthia Prabakaran wrote:
> On Sun, Mar 03, 2019 at 09:09:15AM +0100, Greg KH wrote:
> > On Sat, Mar 02, 2019 at 12:34:42PM -0600, Madhumitha Prabakaran wrote:
> > > These patches fix warnings of line over 80 characters, comment style
> > > issues of SPDX License Identifier and remove unnecessary blank line.
> > > 
> > > Madhumitha Prabakaran (8):
> > >   Staging: vt6655: card.h: Fix line over 80 character
> > >   Staging: vt6655: card.h: Fix line over 80 characters
> > >   Staging: vt6655: device.h: Fix comment style of SPDX License Identifier
> > >   Staging: vt6655: device_cfg.h: Fix comment style of SPDX License Identifer
> > >   Staging: vt6655: dpc.h: Fix comment style of SPDX License Identifier
> > >   Staging: vt6655: key.h: Fix comment style of SPDX License Identifier
> > >   Staging: vt6655: mac.c: Remove unnecessary blank line
> > >   Staging: vt6655: mac.h: Fix comment style of SPDX License Identifier
> > 
> > Again, does not match the subject lines :(
> > 
> > Perhaps if you typed out here _exactly_ what you did to create this
> > cover letter, and send them off to us, it might help in determining what
> > you did wrong.
> > 
> > thanks,
> > 
> > greg k-h
> 
> Thanks
> 
> Task: commit patchsets, which contains two patches
> 
> 1. git log --pretty=oneline --abbrev-commit 
> 
> 8f8d8bbad6bc (HEAD -> staging-testing) Staging: vt6655: Fix ...
> f68b96b7f7f5 Staging: vt6655: Fix comment ...
> 
> 08b9bee66e3e (origin/staging-testing, origin/staging-next) ...

Ah, the problem is you never changed the actual changelog text in the
patch itself.  You need to do that.

> 2. Format-patch 
> 
> git format-patch -o /tmp/three/ --cover-letter -n --thread=shallow --cc="madhumithabiw@gmail.com" f68b96b7f7f5^..8f8d8bbad6bc
> 
> /tmp/three/0000-cover-letter.patch
> /tmp/three/0001-Staging-vt6655-Fix-comment-style-of-SPDX-License-Ide.patch
> /tmp/three/0002-Staging-vt6655-Fix-comment-style-of-SPDX-License-Ide.patch

See the subject line does not have the file name in it.

> 3. Format patch for versioning 
> 
> git format-patch -n --subject-prefix="PATCH v2" --cover-letter
> 
> On executing this, my subject prefix never changed. I assume, this is the issues. As this creates same version of subject line and clubs all version into same conversation. 

As discussed on irc, you don't need to use --subject-prefix.

Also, no need to call format-patch twice.

> 4. I manually edit the vim /tmp/three/0000-cover-letter.patch
> 
> 5. Edited the 'SUBJECT HERE'  and 'BLURB HERE'. Here too I noticed that the subject prefix never changed.. So i tried to edit it manually.
>    I tried to change subject prefix for all the three files manually

Editing this file does not change the actual text in the patches
themselves.

> 6. After that I tried using mutt and git to send files 
> 
> For git I used 
> git send-email --to-cover --cc-cover /tmp/three/*.patch
> 
> For mutt I used 
> mutt -H /tmp/third/0000......patch
> For all three files I individually sent  it via mutt

Sending is fine.

Ok, you need to change the subject lines of your patch.

to do this, rebase the patches and edit the changelog text.  Look up how
'git rebase -i' works, with the "reword" option.  That will give you the
chance to reword the changlog text to properly change the first line of
the patches to contain the filenames.

Then do your step 3 and others and all should be good.

Hope this helps,

greg k-h

