X-GM-THRID: 6252308314150928384
X-Received: by 10.50.25.133 with SMTP id c5mr4030854igg.4.1455729793434;
        Wed, 17 Feb 2016 09:23:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.4 with SMTP id h4ls1585402qge.39.gmail; Wed, 17 Feb
 2016 09:23:12 -0800 (PST)
X-Received: by 10.31.52.207 with SMTP id b198mr2516587vka.5.1455729792616;
        Wed, 17 Feb 2016 09:23:12 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id 79si354273pft.0.2016.02.17.09.23.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 09:23:12 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id q63so14786330pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 09:23:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=J8wSvonHR6U0+z/7Px4Uk86qyK75CSpGFn1FMj/K5Zg=;
        b=zXXbgE0zACt3KVls49TZzZH4aaq/cBAZJA9wuafmYLT402db67LC7nvsG4PO2Z/VV5
         qLK0j2er0OHRj47rktRio1nlstkoM/hUkjaBrAeITeHFcwqj6HV3mGBe/VCCnS01lMCV
         qLJJ72SH3EK3h6KLY8pFtKbu8kEHc3UGt4qdoECWUFcweShsfmVvmczBNphk8JNfMLRt
         DkMiD0Jid1ko450/3KhEX7UIxG2lgkV+gtluoAcN9OI/1qEvaRApaObrOMPWC+cXbZmZ
         ZBXRN7BvskptF22jFk+5rDAQJzwN4IGZLgXbvcS2yyuEYQFyPzVEvFBKoHz+2tZmQfFv
         QZfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=J8wSvonHR6U0+z/7Px4Uk86qyK75CSpGFn1FMj/K5Zg=;
        b=hJwoebn7zV6rRigVMe1/I67CY/F+q1EZ/ha0RUCFwY4aqnn3IxjJ07rpu5p1HSioeD
         3efpf3WWIjWHCm6urFnNplsLC8mCfiVLyp0pJFgs00w3KAabThw3FMT3CqMEmd9DGEe5
         /tU9PCRfQAmYE0q+E4PcBzMbgLLfImuSuCsBYGFqaZMt9ZwrS+5ENoQ/dInK/Ubk8Pgl
         IGIBSftLd8/ISGul7Y1Q0izg0/yjCbxy/QH8tq3y9vuaF2Pi2To/zADL8jmrntLIL9WA
         GjRxGQ6lQdYoPdJd81MEWGjAlmv8M5fn7QXaoJoUZdjJjWmQUAbI1SvAY31Uvqu+lQlw
         ne8A==
X-Gm-Message-State: AG10YOTRbiI83NHktiu9mFGQT3yA22jMxcCE6Pan/WouJugi0ZXQc60CZr47Z3K+WUMvfw==
X-Received: by 10.98.13.216 with SMTP id 85mr3644463pfn.143.1455729792432;
        Wed, 17 Feb 2016 09:23:12 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-72-178.dhcp.embarqhsd.net. [67.232.72.178])
        by smtp.gmail.com with ESMTPSA id yh5sm4061817pab.13.2016.02.17.09.23.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 09:23:11 -0800 (PST)
Date: Wed, 17 Feb 2016 09:23:10 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: use 0 in test for
 successful urb status
Message-ID: <20160217172309.GA4412@d830.WORKGROUP>
References: <20160217170915.GA4387@d830.WORKGROUP>
 <alpine.DEB.2.10.1602171212530.4547@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1602171212530.4547@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Feb 17, 2016 at 12:13:18PM -0500, Julia Lawall wrote:
> 
> 
> On Wed, 17 Feb 2016, Alison Schofield wrote:
> 
> > Replace STATUS_SUCCESS with 0 in urb->status test.
> >
> > Successful usb status is simply 0.  STATUS_SUCCESS is defined
> > for NDIS status in this driver, but was being misused in this case.
> 
> Maybe if (status) would be more normal.

got it..making it more normal, and propogating to one other instance in file.

> 
> julia
> 
> > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > ---
> >  drivers/staging/vt6656/usbpipe.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
> > index f27eb9a..5551b4f 100644
> > --- a/drivers/staging/vt6656/usbpipe.c
> > +++ b/drivers/staging/vt6656/usbpipe.c
> > @@ -116,7 +116,7 @@ static void vnt_start_interrupt_urb_complete(struct urb *urb)
> >  		break;
> >  	}
> >
> > -	if (status != STATUS_SUCCESS) {
> > +	if (status != 0) {
> >  		priv->int_buf.in_use = false;
> >
> >  		dev_dbg(&priv->usb->dev, "%s status = %d\n", __func__, status);
> > --
> > 2.1.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160217170915.GA4387%40d830.WORKGROUP.
> > For more options, visit https://groups.google.com/d/optout.
> >

