X-GM-THRID: 6749323707377778688
X-Received: by 2002:a37:b7c5:: with SMTP id h188mr3596925qkf.229.1572563830840;
        Thu, 31 Oct 2019 16:17:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ae9:f210:: with SMTP id m16ls1503089qkg.3.gmail; Thu, 31 Oct
 2019 16:17:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz7WnenyS2gE0z1g3NboCJGEO40V+q0SpV+JSiCX+vzZhYLnlrFx+XImZkH2tKFgQ/3YDlA
X-Received: by 2002:ae9:e711:: with SMTP id m17mr1253333qka.310.1572563829397;
        Thu, 31 Oct 2019 16:17:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572563829; cv=none;
        d=google.com; s=arc-20160816;
        b=MZmpoWNK7szBwvAs69OoREfXQ4YlvZN1hhY61ndm8zSGqum5yXBnHfTqCTyDtCPHYr
         LZwJiZLtXa1Bg/e5Zi9zwF/3QDU/w/f1d20lIO2ONuNJbQmzOcQZCJogZLvmXBgn8X+9
         xx3TJyMSS1dZwHoKPHqxTkTbWwrzHVhnoP40YAhsily8LyAifcZdukBwR+QXC/9jxiCl
         L4Ne2GVQ2Loav1545IP72cj0xGiSWElO61I4Kf1iFIPfCWWoIU2CM7Nlw1qaUa1gR45w
         35VTJlkxiSTfa5RQsdycyezyJQkwMci8WzCvJkfJef0tclwWp8hiWDyrCGC48nRSiCqF
         wbkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=5c5d+7OVSAaiwSMr33wpU3Rz2RkCVISHhnB5ZSdqZFs=;
        b=c+mCbuDvv6EihPj9dg9dnGypvymWx6+8CKEU8vflIkZTEcYWef5tT3xXGJdz/Fauup
         wkqDqVkjv7Ls9uFoegQzPV85fL8WDAz79feoZqTFgyQjCK6OhyyiX4SFR/F48wmrJZxU
         T27739nhh3t4a7WLW09wy+helXJ8YZQ5/gGmhF9O9Sor3kF0jwzO9sULnOmq/6TWNP/k
         xo/54OXP3ByObraML6gvswLy/NYetPtWAUbwqmZPC7tNehBKDJ3MJmgvL3dJTmV48xzQ
         2wUCezehy16xHCy5pkpEa3Yby60ktv5HdAI3tqmDzhgMzPQVEuqmAttKn3CG8ys/kZ3O
         xfVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fzQtl9AT;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com. [2607:f8b0:4864:20::a44])
        by gmr-mx.google.com with ESMTPS id x135si260222qka.3.2019.10.31.16.17.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 16:17:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) client-ip=2607:f8b0:4864:20::a44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fzQtl9AT;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vk1-xa44.google.com with SMTP id e205so1801199vke.2
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 16:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=5c5d+7OVSAaiwSMr33wpU3Rz2RkCVISHhnB5ZSdqZFs=;
        b=fzQtl9ATlSJZe2f1MX8plqAZl2ORefCw1x0nyPRRsWtDDhgbdvaryDO7Wzm11hg/JW
         wwK9Gb2/6Y4q1pNSt/WeohBPu28b7fYNuaqFUtaj6Z/y5287cxRy3nWlW6tLchSs/YmA
         2WmKKCyZWgyKoYXWdPdppdqKacxc5YTgARPc2irHZynkIJeoHNfGWClgl11CeDBlhUQ/
         d11Y1soZ3sOm/WkuVS5eRgMVsn2UQqRGh3189fUJVvtYPSP7qKPAg8T1Ca6lI285XbH7
         228eRr5d2GomOxds8Mgl1c1VIVN8L+f5Ul/cuRzRYC/M/Blv5Ng1rz902TvFHZc6WG3P
         R3zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=5c5d+7OVSAaiwSMr33wpU3Rz2RkCVISHhnB5ZSdqZFs=;
        b=pe4Kb3uhFAmEE09V/AMl3xRIWWrNSjjzCjE/vrJmgv9W7FqylQtuh7mNu92mbSh0DP
         Coq3ykjSBpRKvZMEaMIvmT4IF+aPybtkiNIXEO/VlVB/69Y6q/s1q746OkAw66IHcfOb
         UUMBGt+l8pxIxkV56yStYY6nsszHL6fq9POtA6Sr3sZ47CD5Mo4N9oODGuNOQGD/M7Mq
         d4HnMHbCdrTI5vl+z5HxYYdQSa5O/Adrgx0qCEvbFvOhKSCI190PfL+co3hWDUFe4P6S
         dUecO2kQkKT3FKqVAwfcpGyElbAsKoWLvmWEEqeLJlXNl1+9XWOqY+1LKHdneWYSIqyL
         SBmQ==
X-Gm-Message-State: APjAAAXXU93JKtC48F+MU87PRTXoBOa8ZT/kNjAqGi81CxuLvySVNgP8
	HrlPD41Tg5+RrIk9i7Yej4yM6qMFnfsgOg==
X-Received: by 2002:a1f:a74c:: with SMTP id q73mr3966474vke.78.1572563828874;
        Thu, 31 Oct 2019 16:17:08 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([190.112.223.105])
        by smtp.gmail.com with ESMTPSA id x186sm111756vkf.4.2019.10.31.16.17.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 16:17:08 -0700 (PDT)
Date: Thu, 31 Oct 2019 18:16:55 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [RESEND PATCH v5 1/2] staging: rtl8723bs:
 Fix line over 80 characters
Message-ID: <20191031231655.ynaua6upheb3al7m@gmail.com>
Mail-Followup-To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
References: <cover.1572396117.git.jarias.linux@gmail.com>
 <6186e531d4cc59bed09329b2c9c4cac7352702bf.1572396117.git.jarias.linux@gmail.com>
 <20191030092456.GA637833@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191030092456.GA637833@kroah.com>

On Wed, Oct 30, 2019 at 10:24:56AM +0100, Greg KH wrote:
> On Tue, Oct 29, 2019 at 07:48:49PM -0500, Javier F. Arias wrote:
> > Fix line over 80 characters by wrapping arguments in function call.
> > 
> > Suggested-by: Julia Lawall <julia.lawall@lip6.fr>.
> > Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> > ---
> > Changes in V3:
> > 	- Edit the commit message to properly use the Suggested-by
> > 	  tag.
> > Changes in V2:
> >         - Edit the commit message to use the Suggested-by tag.
> 
> This is a v5 patch, but you only show what happened in v2 and v3, what
> about the other 2?
> 
> Also, you don't seem to have changed this patch from my last review, why
> not?  I will not take this as-is, sorry.  Please fix up and send a new
> version based on that review.
> 
> thanks,
> 
> greg k-h
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191030092456.GA637833%40kroah.com.

I'm resending this email because my neomutt skipped the list.

Hello Greg,

Sorry, the V4 of this patchset was wrong as I forgot to add the versions on the first patch, so I stopped before sending the second patch and created V5.

About the V5, I think I did what you suggested, as I added a blank line before the Suggested-by tag and deleted the blank line after it.

I'm trying to implement all the suggestions I receive, it's just that I made a couple of mistakes with this patchset (despite being very short), so this is
+why it got to V5. I'll correct all these issues.


