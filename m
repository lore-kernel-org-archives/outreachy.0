X-GM-THRID: 6801903865933332480
X-Received: by 2002:a9d:5c0c:: with SMTP id o12mr12634174otk.145.1583754036759;
        Mon, 09 Mar 2020 04:40:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5513:: with SMTP id j19ls2575811oib.5.gmail; Mon, 09 Mar
 2020 04:40:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuNtalEKP9KV90hAvMsXbTLrmbwWwYNeJSwX6mMuW88hcsH+BqGoLWTsIFn55baz33+ErQQ
X-Received: by 2002:a54:4114:: with SMTP id l20mr10990394oic.127.1583754035419;
        Mon, 09 Mar 2020 04:40:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583754035; cv=none;
        d=google.com; s=arc-20160816;
        b=JTqd1eRP03B6Z9c7VWHqut6DAHMF+kT76RQ0Ub71EjxSEEx308ewrcBoelJrgnjzYC
         4iPm2iTibajJY0Xv/jaOeZZGjCUVRjE43nqVr24ENNFCBgrs2T30jZhkrC4UZPgfWEFS
         V3nWJqP+MO3XfGQsrmikGfWBeBI6XuXfYop8M35Ri2aree+4o6+rRJPExV6pza3pnz0a
         fm2mKxBLSzDYh8bPqIh/k5/zbJ1ay5mW/iLOPzCi96UoyujmDTOMhViHyJQrBuNyFwMw
         J+nsg9dwQHZqNCwm3XzFMquWZ5x9zDvyTN3cuAAkJ7vwiEhX7vH8FXxKwDYi6VK9L1wy
         SVmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=S+pYO7oU5Bhfmzb0DClNxj8CcDfHe2giEX6HAb8Jftk=;
        b=ehnW6jUHaon5CYCCenlvqFCHKT3w5G25U5LHuqS3KDeBRSBvrOQYMV65jk74/vkj1C
         FwgFkGQenXLh1R9rgmjpVaMZ/ovGTjhThs0a0FcvBeSMAdobA9qvSzafXXxmkGNehO8O
         ADkOdb/i7/qyRqTJgwL5LqnEgB8x3I5D2ALYQwKU7TM9NS2r7V/BnWOy/ye89XEtzWdP
         EK0lgp3TUbB7r6pk8Zczhu/y440h1Y++hWlFsNni2GF/8Y8suKB8nl+qu/71fuThtELL
         udd0EN923chblamWhQCvLkn7FoW26nyO/Ue50rzZYvnOrxiGd4M50vWzaAY7qouKDozk
         ww+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=N8684uBD;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id v19si60809oth.1.2020.03.09.04.40.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 04:40:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=N8684uBD;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583754034;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S+pYO7oU5Bhfmzb0DClNxj8CcDfHe2giEX6HAb8Jftk=;
	b=N8684uBD5wUtUwfonGGHF9WbxrOujbYmomdiuaKaEPMIvvZRMZUvWmsljjEyfqhWrbrNYd
	U7xUHnRqZofBZQb/zjuJtJFQQL87jOqPHTggASYNNnLwr9sXV8OaZjK4iPqwxYgcPdJuCl
	Ay6ln9/BRg6BNgcjusrrajs2pt5pp44=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-234-sArWk6JVODm7U3YHn2SYYg-1; Mon, 09 Mar 2020 07:40:33 -0400
X-MC-Unique: sArWk6JVODm7U3YHn2SYYg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 39FF5107ACC4;
	Mon,  9 Mar 2020 11:40:32 +0000 (UTC)
Received: from elisabeth (ovpn-200-26.brq.redhat.com [10.40.200.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0866A84D90;
	Mon,  9 Mar 2020 11:40:30 +0000 (UTC)
Date: Mon, 9 Mar 2020 12:40:25 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: exfat: alignment should
 match open parenthesis
Message-ID: <20200309124025.3b8d039a@elisabeth>
In-Reply-To: <20200308182046.4402-1-payalskshirsagar1234@gmail.com>
References: <20200308182046.4402-1-payalskshirsagar1234@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun,  8 Mar 2020 23:50:46 +0530
Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:

> Align code to match open parenthesis.
> 
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
>  drivers/staging/exfat/exfat.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
> index c863d7566b57..341c9192f7e8 100644
> --- a/drivers/staging/exfat/exfat.h
> +++ b/drivers/staging/exfat/exfat.h
> @@ -716,9 +716,9 @@ int multi_sector_write(struct super_block *sb, sector_t sec,
>  void exfat_bdev_open(struct super_block *sb);
>  void exfat_bdev_close(struct super_block *sb);
>  int exfat_bdev_read(struct super_block *sb, sector_t secno,
> -	      struct buffer_head **bh, u32 num_secs, bool read);
> +		    struct buffer_head **bh, u32 num_secs, bool read);
>  int exfat_bdev_write(struct super_block *sb, sector_t secno,
> -	       struct buffer_head *bh, u32 num_secs, bool sync);
> +		     struct buffer_head *bh, u32 num_secs, bool sync);
>  int exfat_bdev_sync(struct super_block *sb);
>  
>  /* cluster operation functions */

The change itself looks good, but as Julia mentioned, you
should use get_maintainer.pl and send these changes to more people. In
this case, adding exFAT maintainer and linux-fsdevel@vger.kernel.org to
Cc: would be nice.

Note that this also depends on habits, lists, personal preferences. You
will find that some contributors Cc: the whole list from
get_maintainer.pl (which is fine by all means), some contributors might
already know who is actually interested in changes (and not Cc: all
results). Depending on what subsystem you're contributing to, you'll get
familiar with practice.

-- 
Stefano


