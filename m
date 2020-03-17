X-GM-THRID: 6804823419031388160
X-Received: by 2002:a9d:c61:: with SMTP id 88mr3725766otr.144.1584450062783;
        Tue, 17 Mar 2020 06:01:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7a85:: with SMTP id l5ls7495436otn.0.gmail; Tue, 17 Mar
 2020 06:01:00 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsucBF75EHdrINKrAnhyLH52WAZWZiquM2m+cVr2wQHyKSVQbw15iK1378fHMB11DiqAjGt
X-Received: by 2002:a05:6830:4038:: with SMTP id i24mr3687515ots.0.1584450059973;
        Tue, 17 Mar 2020 06:00:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584450059; cv=none;
        d=google.com; s=arc-20160816;
        b=luELSGfzE4J63dJ7gmcWdB2sxq68WWNfD7bMiluXJ5JSuYlvsrTzR1HY02CHJ83TFf
         ZjYogK+ahT9hYwXjBLA0vFNnS7O0XnHvQG/X3Vtp0aH7ZYijTTQ4PZk/8Xx1cprktuW2
         46QjNRyd47Mq/TCwtoCHoyEqo+Ot6oFXB4srVqZ4Ue+6wYPN/erDKGCBmyD8Frj1se8z
         dshNDxRdx+G171NAtvUZs5nbGhhlvwzINg686UtUl2RZ9+SKjoxH1VOWRfaIPQV+5cMZ
         AKcof1FcU1xGipZmXJQPv5ujfJosqEXisFdlN9m231K/Ye1Wq9HrFxChN6XpJmt60sRy
         Pncg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=hHytq6IHrkWQRpDALY3gsRyvzyeX8VtECORcf5OB+ws=;
        b=cG6uln+Xl572GXU2GXxPdJo8Trw57kHHWzkFhlTz48dtb0b5f7lx7IyaC675100s1U
         HVZoSF/pdPdfuPMnllgQog11bFGQe7ivsjqeRBA9kpvKCeyNWmu6E2gHuguzjXQS3tr8
         qM2plN46R37P0S6nmHKs5mus9uuJr8MT1cYNf+PMPXrf7mCxqJPRGssfevq6FNOgGqXB
         e3369Llsd1KtgD2QwmQlQ+ijfQ2mmiFelLgQzakw8Wt3dfwAjCKUPiKgbS05i/88nBwP
         5RN9Jf1flDMIBfiEFR5FC8ww+TnrmR1pBRcZVbwQawdSIblEvJA0E7Ne6T+pOyDHIDsI
         O9pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WLVSZv4T;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id a63si188480oib.4.2020.03.17.06.00.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 06:00:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WLVSZv4T;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584450059;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hHytq6IHrkWQRpDALY3gsRyvzyeX8VtECORcf5OB+ws=;
	b=WLVSZv4TSOypGupj82j13ZGBmDKaxYYPCu1klOqjHdmYQ7s5XMloSWPUdN+qOQk6JX4sli
	aiYQEaGm4K6QLBEBQYdAkEG5FkfR2G3SkxP6oPbZcQ1fPn8F1ysleT9KZd3P56TsbLQeU/
	pESO6ojMiozSg3HL3mUXbFNLTj653J4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-473-4haZ9hjBMqysCSzxv_XXoQ-1; Tue, 17 Mar 2020 09:00:57 -0400
X-MC-Unique: 4haZ9hjBMqysCSzxv_XXoQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6B4C0800D55;
	Tue, 17 Mar 2020 13:00:56 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C5CF85D9E5;
	Tue, 17 Mar 2020 13:00:54 +0000 (UTC)
Date: Tue, 17 Mar 2020 14:00:49 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: rearrange line
 exceeding 80 characters
Message-ID: <20200317140049.7c594147@elisabeth>
In-Reply-To: <20200316151009.GA7604@siyah2>
References: <20200316151009.GA7604@siyah2>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 16 Mar 2020 18:10:09 +0300
Gokce Kuler <gokcekuler@gmail.com> wrote:

> Moved to the bottom line after && operator for it exceeds 80 character
> 
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/wilc1000/netdev.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/netdev.c b/drivers/staging/wilc1000/netdev.c
> index a61c1a7..f94a17b 100644
> --- a/drivers/staging/wilc1000/netdev.c
> +++ b/drivers/staging/wilc1000/netdev.c
> @@ -794,8 +794,10 @@ void wilc_wfi_mgmt_rx(struct wilc *wilc, u8 *buff, u32 size)
>  		u16 type = le16_to_cpup((__le16 *)buff);
>  
>  		if (vif->priv.p2p_listen_state &&
> -		    ((type == vif->frame_reg[0].type && vif->frame_reg[0].reg) ||
> -		     (type == vif->frame_reg[1].type && vif->frame_reg[1].reg)))
> +		    ((type == vif->frame_reg[0].type &&
> +		      vif->frame_reg[0].reg) ||
> +		     (type == vif->frame_reg[1].type &&
> +		      vif->frame_reg[1].reg)))
>  			wilc_wfi_p2p_rx(vif, buff, size);

Strictly speaking, your change is correct and this way the code
complies to the coding style.

Still, I tried to read the "fixed" version first, and it took me a
while to "vertically" track all those parentheses. Can you find a
better way to fix this?

-- 
Stefano


