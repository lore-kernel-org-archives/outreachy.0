X-GM-THRID: 6801905594483605504
X-Received: by 2002:a9d:4e16:: with SMTP id p22mr3381967otf.152.1583754055657;
        Mon, 09 Mar 2020 04:40:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:787:: with SMTP id 7ls530825oto.3.gmail; Mon, 09 Mar
 2020 04:40:54 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtKtf26O+UdxdOPUJtL2lh6DSKu314lybmfVYtpry0pPbwmmeegWiUDNSal77fvJTLyQr+G
X-Received: by 2002:a9d:750d:: with SMTP id r13mr1775851otk.321.1583754054575;
        Mon, 09 Mar 2020 04:40:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583754054; cv=none;
        d=google.com; s=arc-20160816;
        b=i9lbEVkcLWObALdk7PzLHojR/2eCgULKlNbqD7Fif0Q6lW9DEE6jk54nSugUKCX8Ln
         1bk/1pzFy33vPZPcaFywxtEQAFOuHBoHQgUml8qst/08x3ifoWx/vvBNt/umuEbSW0uM
         gtTgnPFwVRR/TGNAa+nWxi+in73BsMz9fSbCiQADKNJ/TWXEKiYxHVL1hruqG7AuRGlh
         iRDU/4a5GQJHZJtZuoe37i2e6L2CAPxKsepJe0PCOrV2IUm8GZNNqeMjKw5Ij+33wlf7
         PlyH07Y+jQ4eWv2wlheGMIKwA+HrUVmel31C6O64/pv8Ox0PLgVpdYCzla43/epLOjbm
         gFqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=6thKptzQR4eSzuLBgwSVKFkzkp9MxOi2kWkSNxfaXWc=;
        b=Pqi2CVwORQnJkxvO/NhlyCBrtUSNkfUyatm4JvrNcTF/Lc4bCSNANEj3Acmi0pMEll
         CrparoeqNq6tUiY28qw4hfyCPXywUWb0gRl5hK4+lAUnPfcnYWQmQnCWS2Z2qr8u5OiG
         bgOMcDnk5EyXvuJ/XFAptF1xFhUSfbqefvdE63ljV9ShrPSpSMuDgPM6VRUKIJ2Zbmn+
         yKuCFdy7S4obwFg2tM1YlGXyPQpzmXKbaYhEBt9Iw1XZWNGKItgIIUlkaCdkXO5oNTlI
         VZExUfcJJhLQH4comVGqJDnysx/RPS8P0oHyybV3OhSPMmjzAy0NdnXY96bDnww7j7Ch
         wddQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QDjNHdKF;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id m132si181446oig.3.2020.03.09.04.40.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 04:40:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QDjNHdKF;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583754054;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6thKptzQR4eSzuLBgwSVKFkzkp9MxOi2kWkSNxfaXWc=;
	b=QDjNHdKF/FLGtj84WEZZaUgc9Yywx7NhA0sxkyHXpvtv0oDUw5UxHrrqgCRKpo2NzJGuL1
	1blobAPuUl2uknFsO6tsqwAiRpEdLLyR/vs925KGHP+bFRGR+ssUb7BbaoCO642+p8JLzc
	+nlWEAx5Qh73IBk8vTMNTidAbWEyq/4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-310-fgjOZ_7ONFSXW--HvrVj9A-1; Mon, 09 Mar 2020 07:40:52 -0400
X-MC-Unique: fgjOZ_7ONFSXW--HvrVj9A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A05CE8010E3;
	Mon,  9 Mar 2020 11:40:51 +0000 (UTC)
Received: from elisabeth (ovpn-200-26.brq.redhat.com [10.40.200.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 757388681F;
	Mon,  9 Mar 2020 11:40:50 +0000 (UTC)
Date: Mon, 9 Mar 2020 12:40:45 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: exfat: exfat_super.c:
 alignment should match open parenthesis
Message-ID: <20200309124045.1f6869d6@elisabeth>
In-Reply-To: <20200308182727.4571-1-payalskshirsagar1234@gmail.com>
References: <20200308182727.4571-1-payalskshirsagar1234@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun,  8 Mar 2020 23:57:27 +0530
Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:

> Align code to the open parenthesis to fix the alignment issue.
> 
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
>  drivers/staging/exfat/exfat_super.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
> index 75813d0fe7a7..6d4e72d744c4 100644
> --- a/drivers/staging/exfat/exfat_super.c
> +++ b/drivers/staging/exfat/exfat_super.c
> @@ -363,7 +363,7 @@ static int ffsMountVol(struct super_block *sb)
>  
>  	if (p_bd->sector_size < sb->s_blocksize) {
>  		pr_info("EXFAT: mount failed - sector size %d less than blocksize %ld\n",
> -		       p_bd->sector_size,  sb->s_blocksize);
> +			p_bd->sector_size,  sb->s_blocksize);

As you are already changing this line, while at it, you could also
remove the excess whitespace before sb->s_blocksize, there's no reason
not to do that.

-- 
Stefano


