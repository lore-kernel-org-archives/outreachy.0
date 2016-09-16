X-GM-THRID: 6330587655423655936
X-Received: by 10.66.220.69 with SMTP id pu5mr9525581pac.32.1474001451223;
        Thu, 15 Sep 2016 21:50:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.138 with SMTP id b10ls5248352otc.21.gmail; Thu, 15 Sep
 2016 21:50:50 -0700 (PDT)
X-Received: by 10.157.15.145 with SMTP id d17mr8997126otd.21.1474001450808;
        Thu, 15 Sep 2016 21:50:50 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id si10si2261193pab.1.2016.09.15.21.50.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 21:50:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q2so438541pfj.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 21:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Mt+4G4+KWCPiuv7F0rKjZlKQlMPQbqgHFiKgfPPdEQU=;
        b=l/Z3e9moM9qM9dvnwgWJVRNXn7A9OmWsoExrtg/xHwgHO9ukGCkWtAkiw4WWge/5eG
         xRafDkOoEa28nb3x0KqTjkbdIvz8MW0kPeJs0Z+uSDBVGCFLXMxGXnTbdKk3kgGY0wbZ
         xhlfwARIcHCmjJOaOIozjvALMSiv5j+w2wOBMiC7RkxZbzwZ9ANCidKsa0U7mT9TSA9l
         75tR1KeqZ5tGXwIxs0bpeSYmTKK8iJOneUJnhSlQ0+866GLzrlR3EubUATUJcwIX9fHA
         9pPHzJ4exol/w5Ha+usXLjzYjr2if2c/3584f/4OOKes7ISJawgVaqCA2LmGAFT1flov
         qWEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Mt+4G4+KWCPiuv7F0rKjZlKQlMPQbqgHFiKgfPPdEQU=;
        b=ag3KrN5n7e+dhE+fqO1e5ZpGkjgOvlWwgfiQpCSrXpQxZG58kSrnFjJzzcKSPoVM4M
         bgwPGhdKKUWFwgmOvy+JNB7WT1/gRcyCYmzTlTnjFm2LKmDVR8L7cmdJEHpPyn3WkQ7U
         EpjIa+04G707i7DR1+wHgo5OOhcq8SyCyp7btnwm9Z16Q8FQkfU/wscPJBTRix2VKpil
         5uJdu37J+ldQzNzWsyarNX399cXPixW1ySCQwZvkd7ADgtQk0aJc55abGw+/ckvd/OIP
         ry7/fInpHVwsLLJxQW9yx4gfG3vvKYrywPcoHz/rOZtQTcrES6kssLGpsnVLBSDyj3zO
         BrOg==
X-Gm-Message-State: AE9vXwNm+p5sOWe/Ff0IcK9NifyhUKtUzLcxGu3gPnEY6UmU9/PpvUNBtElwF7OYZF3BWg==
X-Received: by 10.98.75.4 with SMTP id y4mr20118631pfa.25.1474001450608;
        Thu, 15 Sep 2016 21:50:50 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id mk9sm8424255pab.1.2016.09.15.21.50.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 21:50:49 -0700 (PDT)
Date: Thu, 15 Sep 2016 21:50:46 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Anchal Jain <anchalj109@gmail.com>
Cc: Daniel Baluta <daniel.baluta@gmail.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Doubts Regaarding the checkpatch.pl
Message-ID: <20160916045044.GA2835@d830.WORKGROUP>
References: <eb4ec0a3-54df-4a86-a7d5-85c77aea38c2@googlegroups.com>
 <20160915163855.GD30633@kroah.com>
 <CAAbeOSubG2DO2mzsudDyr2PcArn=W22JAF+20xFevff9L2SdRQ@mail.gmail.com>
 <CAEnQRZAusM33K_=yzQS_=hxi+vJFEz2NOdmhbtyz2CSyknGwUw@mail.gmail.com>
 <CAAbeOSsVJn8Ed9B+acg1BRXRnmixDouk9z1ijGy5LnU2isSz1w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAAbeOSsVJn8Ed9B+acg1BRXRnmixDouk9z1ijGy5LnU2isSz1w@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Sep 15, 2016 at 11:02:50PM +0530, Anchal Jain wrote:
> > Can you give a real example for the CHECK? :)
> 
> like this
> 
>  CHECK: Unnecessary parentheses around padapter->mlmeextpriv
>  CHECK: Please don't use multiple blank lines
>  CHECK: Unnecessary parentheses around pstapriv->sta_hash_lock
>  CHECK: Unnecessary parentheses around pstapriv->sta_hash_lock
>  CHECK: Unnecessary parentheses around pmlmeext->mlmext_info
>  CHECK: Concatenated strings should use spaces between elements
> 
> 
> Thanks,
> 
> On Thu, Sep 15, 2016 at 10:44 PM, Daniel Baluta <daniel.baluta@gmail.com>
> wrote:
> 
> > On Thu, Sep 15, 2016 at 7:53 PM, Anchal Jain <anchalj109@gmail.com> wrote:
> > >
> > >>I'm sorry, but I can not parse this, can you rephrase it?
> > >
> > > When we run checkpatch.pl on our staging directory then it shows
> > > - Errors
> > > - Warnings
> > > - Checks
> > >
> > > So I want to know if we solve the check using checkpatch.pl tool then
> > it is
> > > consider in our patches
> > > or Only those checks is consider which is solved using  cocci script
> > because
> > > this script also fixes those
> > > checks

Here's my take, let me know if I got the question right?

Sometime the cocci script identifies and maybe also corrects (if you are using
the patch option) issues that were also found by checkpatch.  So, the
question perhaps is which tool you would mention in your log message?

I'd say both. You would say the issue was found and fixed with
coccinelle and also corrects checkpatch issue: ....

Or, maybe I don't have the question right ;)

alisons








> >
> > Can you give a real example for the CHECK? :)
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAAbeOSsVJn8Ed9B%2Bacg1BRXRnmixDouk9z1ijGy5LnU2isSz1w%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.

