X-GM-THRID: 6329202731663753216
X-Received: by 10.31.8.206 with SMTP id 197mr13261381vki.11.1473636671397;
        Sun, 11 Sep 2016 16:31:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.225.195 with SMTP id n186ls2703419ith.20.canary; Sun, 11
 Sep 2016 16:31:09 -0700 (PDT)
X-Received: by 10.98.207.69 with SMTP id b66mr13320405pfg.14.1473636669187;
        Sun, 11 Sep 2016 16:31:09 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 142si2028151pfx.2.2016.09.11.16.31.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Sep 2016 16:31:09 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c00::242 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c00::242 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pf0-x242.google.com with SMTP id g202so7189518pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Sep 2016 16:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=A7X+EFVQX7oN7KThFiZb+iFS2g7K/ddAYzThEWuVnHo=;
        b=PGb11gwaphwelmC2hE9dxyIklh9QU3gKc7gK55e5vsInYoQJd/06TjvEqbBxcs+y+y
         IS+DSUfJM5Brs+Z4ZBlFCY7rrxPQk6SNUcO7HpFm+fK84LyAv6ci5ceQC7lWqbWqM3eW
         VbU/4BJip+pdnfyFBWoRQgBmIL26fsTHJ4sAWcSO4vkyM3Fz+1+6xrEFNjztYwvVRjmu
         czM62foYAobLa2bfsKoXHnacTEvFDY9fz9DTsmn/Rz0OuDRMW86Da8G2AQ0DIilJUenC
         qK3/JupVsFCuWpGnvyy4oC3LuRffqSpjdt9EH7tRLfjRdaq/AgCJnnB1NDussiGWIGHc
         ZnNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=A7X+EFVQX7oN7KThFiZb+iFS2g7K/ddAYzThEWuVnHo=;
        b=cJRz6EI1ORYuxkeB+xJTQTsYnnRdS8X6cPYm2l+jNK7kpMZNse8y9A/TJ6nm9LLs5m
         SSBzyXTNQxwpjTyFElycurx1MA/l5o/GVFq08nrLivb1mygGZ8H0EBYC5jp8heNzaUxC
         J3GGVmiG9G98ufU370yfLPx9mzyDq5/+QoMaqpuKlZkZYJqfJkuW2G7gWooZVetkcBNx
         mcMnfHheBX3awV2YPgjTgL92XhzCWur7USClsbelPpGTpNA34o5synRr2FKDcWRFbIMS
         okC9NhnHZ83U/WSBz1p3lJOnOJquyDEZgiVtUj5hBKztbZ23R4o/MF2tLRDjw4dJ0WO1
         YEjw==
X-Gm-Message-State: AE9vXwOxvJ3DrD4OhPCONxww9rYH6i2gF0XtRzBBko/qZ3GPP2wS01Fzn+4V7x2FEeYbDIdp
X-Received: by 10.98.103.8 with SMTP id b8mr2515472pfc.122.1473636668973;
        Sun, 11 Sep 2016 16:31:08 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2001:558:6045:106:7d84:83db:c3b2:274a])
        by smtp.gmail.com with ESMTPSA id h66sm19626360pfc.47.2016.09.11.16.31.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 11 Sep 2016 16:31:08 -0700 (PDT)
Date: Sun, 11 Sep 2016 16:31:07 -0700
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Sending patches
Message-ID: <20160911233107.GA7821@katie-Inspiron-5748>
References: <CAOCi2DEQRUXeN8H143p=K1tg-pyx0RjBVgdENi-CqsyLpoMZBg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOCi2DEQRUXeN8H143p=K1tg-pyx0RjBVgdENi-CqsyLpoMZBg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Sep 12, 2016 at 03:48:34AM +0530, Gargi Sharma wrote:
> Hi!
> 
> I have gone through the tutorial for sending the first patch and even made
> changes to a file with warnings generated using checkpatch.pl . The only
> thing I'm having trouble with is mutt. My university firewall has blocked
> the ports 587 & 465 and hence mutt always gives me the error Network
> Unreachable. Is there any other way I can send a patch? Or any work around
> to the external firewall blocking me?

It may be more useful for you to use git send-email:
https://www.kernel.org/pub/software/scm/git/docs/git-send-email.html

Hope this helps

Katie

> Thanks!
> Gargi
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DEQRUXeN8H143p%3DK1tg-pyx0RjBVgdENi-CqsyLpoMZBg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.

