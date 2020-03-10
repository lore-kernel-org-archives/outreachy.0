X-GM-THRID: 6802694026822680576
X-Received: by 2002:a0d:fb42:: with SMTP id l63mr24839855ywf.67.1583876609728;
        Tue, 10 Mar 2020 14:43:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ae04:: with SMTP id a4ls4044368ybj.10.gmail; Tue, 10 Mar
 2020 14:43:28 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuHgkhjE4rZaDLsfUNDvL57izc8WqTUPvd6irLWa4lM0mRupTMu9Y0mKgcZuxHwnYsfgrIE
X-Received: by 2002:a25:6882:: with SMTP id d124mr24849013ybc.434.1583876608337;
        Tue, 10 Mar 2020 14:43:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583876608; cv=none;
        d=google.com; s=arc-20160816;
        b=EVWlJEQxa9kTsr5tdUff8nQOfzfdOOGLsGqd5UtHXvAlypWeOwea+dwSJdiQdd/FRh
         hTLfgs4DwJTkFlliC94gWuLUamnU5fdVLj4mUJCndZhZm/sl7py7V15c0QNsRXJ0PtW0
         YYG10yyOVIynMWVGHxKquRSKcnLxmepRZKdtXXHHjONTzq13Qp6S8A87kr11G2YDBnYl
         PLshyZysKvHpPZo/gBeZVdNqOb8ZpR99/NEesUZycOzuE8jMU4D6d+qlJ2ifcd80IUmr
         S6vhJ2wqUf2dJSZJP910i5mYvsg82SaKUKihVO3P3AtmO4m/JrYlRdXilNnZ/fwMVIHl
         Ja9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=pFWdOqC19UkurOKyqnPVgURwBt6j00QMxpfbR1RhGR0=;
        b=AAcB/AoeBVIG4Z06UiEbfPdRoCXBdfaIsS5KbDx8vR3C9cLX+qrG8NVh6VNdCGNTJA
         FWiab9dkfXKd6PYuSBHEYIafeq37rle6RrN1H/0X9HQpC+QQ3104yu1A/OVgZLN3nZsU
         K216QNZozWfiHliPZ87QfH66XllzPefb8ZVYqkPCOlF8gyWlWytAKZzPYowS6AB9wbKw
         ci0pa9YKtyAn7Y20oV/0dsi1V4E70FIuhXBPRyQRMLVHBwCFUZ41S5zsgzggdswLaW7z
         Aw75SI+SJesx+L/43xZUfMwANA45WR2X7055BOld27WUYGIYl1EBJcW4S54l1Ty/JCqV
         Hzow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AEHMLpk5;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id w18si9531ybe.0.2020.03.10.14.43.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 14:43:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AEHMLpk5;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583876607;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pFWdOqC19UkurOKyqnPVgURwBt6j00QMxpfbR1RhGR0=;
	b=AEHMLpk5jVttU8aL7S1MuR6+OjYrsmzT+pF8vTHedySZ9M7PG0dznCDCsuaEmAxUO02B7p
	yPy0dDSCVlp/iCvfVtiAWx4e9P4QeL+rQ2dviCGs9K5JXTRDdU6V5yMtY011mIfrAwLEIu
	9XZayAXEhBtSCYgcGTIEBEA9IaVMUdU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-293-XmRAqSfkN3-mCBKIU548DA-1; Tue, 10 Mar 2020 17:43:26 -0400
X-MC-Unique: XmRAqSfkN3-mCBKIU548DA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E3ABDDB60;
	Tue, 10 Mar 2020 21:43:24 +0000 (UTC)
Received: from elisabeth (ovpn-200-42.brq.redhat.com [10.40.200.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5F6BB91D74;
	Tue, 10 Mar 2020 21:43:23 +0000 (UTC)
Date: Tue, 10 Mar 2020 22:43:17 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: r8192U_wx: use
 netdev_warn() instead of printk()
Message-ID: <20200310224317.0ea0a4c3@elisabeth>
In-Reply-To: <20200310212658.4075-1-lu@pplo.net>
References: <20200310212658.4075-1-lu@pplo.net>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 10 Mar 2020 22:26:58 +0100
Lourdes Pedrajas <lu@pplo.net> wrote:

> printk() is deprecated, use netdev_warn() instead, which is a message printing
> function for network devices, defined in include/linux/netdevice.h.
> Issue found by checkpatch.
> 
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
> Changes since v1:
>  - Replace message printing function pr_warn with network devices
>    specific, netdev_warn()
> 
>  drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
> index 0118edb0b9ab..58c1a8da7a8d 100644
> --- a/drivers/staging/rtl8192u/r8192U_wx.c
> +++ b/drivers/staging/rtl8192u/r8192U_wx.c
> @@ -588,7 +588,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
>  				hwkey);                 /* KeyContent */
>  
>  		} else {
> -			printk("wrong type in WEP, not WEP40 and WEP104\n");
> +			netdev_warn("wrong type in WEP, not WEP40 and WEP104\n");

Err, wait, did you try to compile this? :)

The idea of netdev_warn() is that it prefixes the error message by a
reference to the specific network device, so that one knows what device
is actually giving the problem (let's say you have two of these
adapters on a system, or that you have virtual interfaces, etc.).

But for that to happen, it needs a pointer to the appropriate struct
net_device.

-- 
Stefano


