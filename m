X-GM-THRID: 6809913191851622400
X-Received: by 2002:a25:cc82:: with SMTP id l124mr30982544ybf.522.1585709333713;
        Tue, 31 Mar 2020 19:48:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ac26:: with SMTP id w38ls8005150ybi.11.gmail; Tue, 31
 Mar 2020 19:48:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsKkbV62TQCIF2Bw/B2D+zTE9axsWM2N2jxAc8zKCGwfnnvrYrwxnQ3Gji/HCqKrSE7ui34
X-Received: by 2002:a25:cf13:: with SMTP id f19mr32710539ybg.190.1585709332127;
        Tue, 31 Mar 2020 19:48:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585709332; cv=none;
        d=google.com; s=arc-20160816;
        b=sBgRFqMQkEQ6ifFEiNn97l6irn9AJ6YnnL91rtDxwMHmtmRFi69O3qgxXIO11iUrN8
         yz6r0huKEZg1613Qya7UVRkrmaUpBLyPSMfWYkx+hyL76oQ7UZn3oh4aGOjuXoSXUEVe
         34NC77YbKBvhugh2Q3jNgEkqHhmwPYWYrWr/2FGiHX+tobWl2OVdbFsHVuky4P+/dlb2
         xWQ7t+B/500eLitzieXqjN9qqE8x/Pln2kRZW9t1BROloW3kZXAkjYqFmkcKh7xZ2UM6
         Ksphl4QmDx1+218OejFTMsHxu5gbz56yIc7fjb6nghpaXQAU9zlNIJJULiGvkO/sLSKS
         J4pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=87ICS6yiVzihu/jIJgghKTw9d5132rGInr/dO5BRnDk=;
        b=zeZne1Lh3WTAURRO+pPDMlPzvqigJWbCp+77nd/Mwa6Ik/qZG+kFw0Z7CnxMsffGtv
         GwNWla9x6VSHw0f/PTz9DJUwMbwGS3alMPpUI0cUYsX3syeiIO9gP3ufWJehFWWSdhnv
         TsMKj1L/kk13Kpgjses90OgiHhYNn65iyx9u4tXDlcU4wNEy4vewUaK88pAV8kXCnz7Y
         nIBerD2taVLuil1OrW4nSulvYy3jNFJoC/ENMtrK81RtxUEdhPAJNwS7r5A1BtBnjRT6
         hdwga6YLvKvrREikEZshL+/g5WZXLgCmObUyliQVWQoO+1Qf2PwzuiYGDUcCyCAGbxu/
         UnRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FVtotvKe;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id l141si55133ybl.3.2020.03.31.19.48.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 19:48:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FVtotvKe;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585709331;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=87ICS6yiVzihu/jIJgghKTw9d5132rGInr/dO5BRnDk=;
	b=FVtotvKeaBeJuDI+wJ9jISVpdUbvwQgEAVT8Hbq64Cz3arLUCSLhPTsWRY0fLjCxU+FvVl
	32nICEfLQetOXviVNlImu4faMhrV3Dq+nIN+PkXKWVc/n7gHmN0iRrtflyxyiLu832uOke
	BSem+YJ3FgcKYI3Wqp7bjIueyi4hG0E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-27-94xlqjuaMtmXqFwgA3JrDg-1; Tue, 31 Mar 2020 22:48:47 -0400
X-MC-Unique: 94xlqjuaMtmXqFwgA3JrDg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 739B619067E0;
	Wed,  1 Apr 2020 02:48:46 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.13])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 573D897B19;
	Wed,  1 Apr 2020 02:48:44 +0000 (UTC)
Date: Wed, 1 Apr 2020 04:48:38 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
 Larry.Finger@lwfinger.net
Subject: Re: [Outreachy kernel] [Outreachy] [PATCH v2 2/3] staging:
 rtl8188eu: Line over 80 characters
Message-ID: <20200401044838.4f8a0ba9@elisabeth>
In-Reply-To: <20200331183201.18386-3-debsoumyajit100@gmail.com>
References: <20200331183201.18386-1-debsoumyajit100@gmail.com>
	<20200331183201.18386-3-debsoumyajit100@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed,  1 Apr 2020 00:02:00 +0530
Soumyajit Deb <debsoumyajit100@gmail.com> wrote:

> @@ -445,7 +455,8 @@ static void update_bmc_sta(struct adapter *padapter)
>  		tx_ra_bitmap = 0xf;
>  
>  		raid = networktype_to_raid(network_type);
> -		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) & 0x3f;
> +		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) &
> +							      0x3f;

Hmm, no, wait, what is 0x3f bit-wise intersected with?

a = lol;

a = lol *
    2;

a = (lol + foo) *
    2;

a = lol + foo *
          2;

but not:

a = (lol + foo) *
         2;

...right?

>  
>  		/* ap mode */
>  		rtw_hal_set_odm_var(padapter, HAL_ODM_STA_INFO, psta, true);
> @@ -456,7 +467,8 @@ static void update_bmc_sta(struct adapter *padapter)
>  			arg = psta->mac_id & 0x1f;
>  			arg |= BIT(7);
>  			tx_ra_bitmap |= ((raid << 28) & 0xf0000000);
> -			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__, tx_ra_bitmap, arg);
> +			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__,
> +				tx_ra_bitmap, arg);
>  
>  			/* bitmap[0:27] = tx_rate_bitmap */
>  			/* bitmap[28:31]= Rate Adaptive id */
> @@ -647,7 +659,8 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
>  	rtw_hal_set_hwreg(padapter, HW_VAR_SEC_CFG, (u8 *)(&val8));
>  
>  	/* Beacon Control related register */
> -	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL, (u8 *)(&bcn_interval));
> +	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL,
> +			  (u8 *)(&bcn_interval));

This is another pair of parentheses that you could remove: &a == (&a).

-- 
Stefano


