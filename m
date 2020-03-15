X-GM-THRID: 6802694026822680576
X-Received: by 2002:a63:5d8:: with SMTP id 207mr23788415pgf.413.1584307094979;
        Sun, 15 Mar 2020 14:18:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:834a:: with SMTP id h71ls7837756pge.4.gmail; Sun, 15 Mar
 2020 14:18:13 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vugbY4Qk7b9W/p1lkuQuNvRZ6uk2wZC7zOWN/b5G4ezpgL7njNeGQ1pW9wt2ZUcLAG37aje
X-Received: by 2002:aa7:94b9:: with SMTP id a25mr21123258pfl.193.1584307093490;
        Sun, 15 Mar 2020 14:18:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584307093; cv=none;
        d=google.com; s=arc-20160816;
        b=hwf4WFOCQhbAcLu4gRNoZRviFk2YTg6n/O6keRAth3ic0uIHGypjE83NtMms7MJKOq
         NJ3I6yxxYSWLp6joYQ50v7D0f/F0ztQROcYtjPw6+oeDyR+gsqu5RxYN3fL2vNHYIsEn
         ssRVryct5cessfEZaQqQwDpYPZQg6qGtNFH3K89a716DjdrVDPkPWsh/WVc0jtybXuse
         3i5Ptz+k63J1SKMGAfeSLyeiNGjemQHy6YVVVUgCDdp4kdFcJ0DBou7gBjZ+U5E2w0j7
         WnCHBjc01r1S6OgbxL7MhW9gZIXuUD4KUEbGkq2YOaEgRSTQ9QL/71WnMrgaqIXe2sgx
         R8gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=P928OW2k/bJQjXlNFLSdDJ9VBgjgc+DIuCGdmMMdNM4=;
        b=ahZuYxjydBtv24fCdCJmdpLkQA7BDX4lfLiruo2D6AYvWoVtOaF/T6g2O8mC+z+tK6
         ZmK/Py7LQR8V8bW84wLxdfFXXsS2C8J8cmRyhdwjK5LNsTf7O1zjbMlk0I4iMvgvM0bU
         yC2Jhc3EH7Sf/lMRAGcWRm3fFAty0uOwF3GKk4/RTSYJh7BeKs1SNmwSqeeVyiR606ML
         mpsewSil0G4CbFd/SCYhcmK/96CleY4XjoNXwLAaLjJ/8zfQ+YMBPMDHgIRzpbq4qjO9
         hUDtaL9CUmKdWwtq56BwfRa6Efn1DX9gZrUH+BI1Q8pS6GnSaFjqDcGml5hy6iVYUD1I
         IcEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=V5F2O7ER;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id ml9si24061pjb.2.2020.03.15.14.18.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2020 14:18:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=V5F2O7ER;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584307092;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=P928OW2k/bJQjXlNFLSdDJ9VBgjgc+DIuCGdmMMdNM4=;
	b=V5F2O7ERCawqm3MKbPfRA8XDXzG/b8Ri5SL/xCA1pWYCuCBuRhP2E1Sai6q1L6pFuO0czm
	5VZuULiaRqnExh/9gdQlSt8N0wpbkhDWkyCdP3Qyn0qVIr48VnF+Z14Kg22If+ICGpXKPI
	QT0R8cIKzkV4zz6fClxB5CFCrdoARCk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-75-bce_Bk8eNZKrakJa5Q54tg-1; Sun, 15 Mar 2020 17:18:10 -0400
X-MC-Unique: bce_Bk8eNZKrakJa5Q54tg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EA560800D50;
	Sun, 15 Mar 2020 21:18:08 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5AF1F92D41;
	Sun, 15 Mar 2020 21:18:05 +0000 (UTC)
Date: Sun, 15 Mar 2020 22:17:56 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v5] staging: rtl8192u: r8192U_wx: use
 netdev_warn() instead of printk()
Message-ID: <20200315221756.43c21285@elisabeth>
In-Reply-To: <20200313090544.6334-1-lu@pplo.net>
References: <20200313090544.6334-1-lu@pplo.net>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 13 Mar 2020 10:05:44 +0100
Lourdes Pedrajas <lu@pplo.net> wrote:

> printk() is deprecated, use netdev_warn() instead, which is a message printing
> function specific for network devices.
> Issue found by checkpatch.
> 
> Suggested-by: Julia Lawall <julia.lawall@inria.fr>
> Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
> Changes since v4:
> - Log message correction.
> 
>  drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
> index 0118edb0b9ab..100532598781 100644
> --- a/drivers/staging/rtl8192u/r8192U_wx.c
> +++ b/drivers/staging/rtl8192u/r8192U_wx.c
> @@ -588,7 +588,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
>  				hwkey);                 /* KeyContent */
>  
>  		} else {
> -			printk("wrong type in WEP, not WEP40 and WEP104\n");
> +			netdev_warn(dev, "wrong type in WEP, not WEP40 and WEP104\n");

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


