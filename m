X-GM-THRID: 6669024286787764224
X-Received: by 2002:a1c:2d86:: with SMTP id t128mr571008wmt.2.1552754188923;
        Sat, 16 Mar 2019 09:36:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4488:: with SMTP id j8ls2370248wrq.1.gmail; Sat, 16 Mar
 2019 09:36:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzOsjfTXe57pE8QWIOQ1i7cOQH2fhBQbKYGtbutWfGi6Jhyq3JeJ0UAMHUmdHojUknep0/C
X-Received: by 2002:adf:dc0c:: with SMTP id t12mr404055wri.15.1552754188129;
        Sat, 16 Mar 2019 09:36:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552754188; cv=none;
        d=google.com; s=arc-20160816;
        b=L3UApSy2SDrO7XRqXyz+j8IGgtPSg/gUUTQDQo/TIePvzbXSblBkRSoindr4TKgCRn
         lDh+7acONMGm35D0t4mWFMhdN6E28r5VSvX2cUxp9fjN29+K1L6SgE+lGb6w09nwand2
         KHu0nFVU+rbpZbPGMTpAjxEhH3WOT315a2WUIgyss+KPV8JkrLZygh6fPoggQRx7low8
         jdYcmBYlIgTUgUb0eml/A5cr99r1UVTLEYRKr6QIDEu1Yo77gOlEtSF/cN9zmyniQqOJ
         e/fV4+PD4HQnQg+YKLAwN4U+TiTWgikaTlqsNugZgZq7C/d4S8oP1Pikb2Pagv1pCWU/
         IyrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=3W4MqP1i6kTCKSxGzu1pN1lvWgj9zn8odMdAiZ9TBmw=;
        b=TNVO9ItZs7jAEXucWat/rmWXzhFXCvKwxRlOWnDrWuPiNE7wbJYfyKT+y2G1sMKgvm
         ekpsS5GyhR9CahI/fOTPu6RHQ7CtVGuD7hSAjAx10USny+2TWtice5Fb/qWU5YVbKjvM
         dErZ2UiWLVAoYb6GxKZdWy2f191TzSFMWanX0Dk32KUJqVKGTQlZXpLpZDfvVHjA0+sJ
         iAnWXz7M9+pAqH9wrG9NHI5d9nCovAlPaCJjQZIoUQue7twTCTk2wfcRFHwe0pK4dRKI
         g8z/jtgTzM52DjlqjyDv2cs5vQRqKatZl+vxAbTV6pd8H6SbBa3/H7RJbpm7n9kOTe5R
         DR9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y192si162555wmd.1.2019.03.16.09.36.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 09:36:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,486,1544482800"; 
   d="scan'208";a="374056493"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 17:36:27 +0100
Date: Sat, 16 Mar 2019 17:36:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anushka Shukla <anushkacharu9@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy kerel][PATCH] staging:gasket:apex_driver.c:fix
 the parenthesis
In-Reply-To: <20190316161959.8901-1-anushkacharu9@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161729560.2487@hadrien>
References: <anushkacharu9@gmail.com> <20190316161959.8901-1-anushkacharu9@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

This is not the right subject line for this patch.  First, you have put
[Outreachy kerel] in the subject line and the mailing list has put
another, so there are two.  You don't need to put this in the subject
line.  Second, the information about the file is no correct.  This is no
something that you can make up by yourself.  Use git log --oneline to see
what others have done.  Follow the same choice of words and spacing.

On Sat, 16 Mar 2019, anushkacharu9@gmail.com wrote:

> From: Anushka Shukla <anushkacharu9@gmail.com>

You shouldn't need this line.  Update your git configuration file so that
git-send-email will use your full name.

> Fix the checkpatch.pl WARNING in apex_driver.c by changing the position of parenthesis

Commit log messages should be limited to around 70 characters, since they
will be indented a bit.  Try to come up with a messae that describes what
you have done and why.  Avoid Fix, which doesn't really give any
information.

> WARNING: Line should end with '('
>
> Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
> ---
>  drivers/staging/gasket/apex_driver.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
> index 0578bf1ba1e9..7c2ffa467557 100644
> --- a/drivers/staging/gasket/apex_driver.c
> +++ b/drivers/staging/gasket/apex_driver.c
> @@ -529,18 +529,18 @@ static ssize_t sysfs_show(struct device *device, struct device_attribute *attr,
>  	switch (type) {
>  	case ATTR_KERNEL_HIB_PAGE_TABLE_SIZE:
>  		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
> -				gasket_page_table_num_entries(
> -					gasket_dev->page_table[0]));
> +				gasket_page_table_num_entries
> +				       (gasket_dev->page_table[0]));

This doesn't look very nice.  The argument is the same in all cases.
Maybe you could create a new local variable with a short name and an
appropriate type and store this value in it before the switch.

julia

>  		break;
>  	case ATTR_KERNEL_HIB_SIMPLE_PAGE_TABLE_SIZE:
>  		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
> -				gasket_page_table_num_entries(
> -					gasket_dev->page_table[0]));
> +				gasket_page_table_num_entries
> +				       (gasket_dev->page_table[0]));
>  		break;
>  	case ATTR_KERNEL_HIB_NUM_ACTIVE_PAGES:
>  		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
> -				gasket_page_table_num_active_pages(
> -					gasket_dev->page_table[0]));
> +				gasket_page_table_num_active_pages
> +				       (gasket_dev->page_table[0]));
>  		break;
>  	default:
>  		dev_dbg(gasket_dev->dev, "Unknown attribute: %s\n",
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190316161959.8901-1-anushkacharu9%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

