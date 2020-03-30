X-GM-THRID: 6808656295974928384
X-Received: by 2002:ac8:3656:: with SMTP id n22mr10629272qtb.296.1585556259535;
        Mon, 30 Mar 2020 01:17:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ae9:dc83:: with SMTP id q125ls8080525qkf.9.gmail; Mon, 30
 Mar 2020 01:17:38 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsG0M7XxAM6dKHL25eDPu7tguAp3IoK3veKwinzm+8Z9h3uhhmyQWdgwphruCjTLZ6+NOg3
X-Received: by 2002:a37:d244:: with SMTP id f65mr10861508qkj.373.1585556258032;
        Mon, 30 Mar 2020 01:17:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585556258; cv=none;
        d=google.com; s=arc-20160816;
        b=mr1MAJt1+sjU5ujhc2zGBwmV3rwmjkDCyMwdcre6W8IsQRkdBoKRV8sNMNG8RJuFUC
         6fDg69fZj4V1PVx7zzg4nwsVteN/jIfqC5x64GK8gCwm7PnbMF9AefKSjR/gMSZSWaK7
         4Y9fxCsNYzgn0hJQesg+Fqsavb4cfzyuQ5qU2My9v3p9AcLQmMrzBu4XLsTeS15dxxFX
         7OsJw7+VA26SxQTS6J6VWz+0jIfPRhIQXQINfyDYU/t2Rn9VGQkL3blr5Km/xyY0yORQ
         8MfvZbKXBPXig2RRhYcCkOdaQ+TbFOMzhKQAf/DVmlY/ixF9oS4ulUm4aRSEHnP6W1eY
         jmtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=MdBeKYhhm1mcNHvgo+o5z2pp2eXaN//G3UpNcsEod34=;
        b=mUmAi4MhLprquOYMoro2KQgNM9HOIO/kvQ+0R4PQG5vao4cgZLNH01XvOt6FlDtYee
         ZRcyhWVmUoDhcUPwaKtqTyvxSMSUm8YdLlsmEqd7/qoYGDwjs8A8EES44963FagQJ1TO
         EzyWQ+2XH5bsKHdR18t6MQf0s2s6Hsw82wIzchSmun2UHqPDV0tRLDAN1z1EvmWHolbh
         qIpeMww08w80iINLRvuZXHoohibOTuWEIPy7ZuqmXv1FogxJaMBtfTPpO2Z2WCaRxwO/
         FivURdq6N0GTSzXRZrU6vQ3dxmzPFHpPrZRAwjDMOqoKfFLr391cb1y08NpE4mZsHHAB
         qELA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KgRPGwLi;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id j56si1102413qta.0.2020.03.30.01.17.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 01:17:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KgRPGwLi;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585556257;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MdBeKYhhm1mcNHvgo+o5z2pp2eXaN//G3UpNcsEod34=;
	b=KgRPGwLinlmXaGVDbS1ZZRfN4zy9AGMcvgEzJRtVnqHQgGhsJxQD91vhutw8w7NXyfpg6r
	ImC+LSyMup6n+M2pAhrVZ6ZbCn3iu6zFWFIjDmLclxYjvYmiL4dyKLeORT7u3H67ydvBjT
	2Gp8eizUuohzWBu8GoEWol7c8XumrVk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-50-emUi9ZoqPBytLzHyI4bELw-1; Mon, 30 Mar 2020 04:17:33 -0400
X-MC-Unique: emUi9ZoqPBytLzHyI4bELw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A24991005509;
	Mon, 30 Mar 2020 08:17:32 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.47])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A37A919756;
	Mon, 30 Mar 2020 08:17:29 +0000 (UTC)
Date: Mon, 30 Mar 2020 10:17:20 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: gregkh@linuxfoundation.org, nramas@linux.microsoft.com,
 forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Patch v3] staging: vt6655: Remove multiple
 assignments.
Message-ID: <20200330101708.73a51b5b@elisabeth>
In-Reply-To: <20200327192700.12289-1-briana.oursler@gmail.com>
References: <20200327090534.GB1669531@kroah.com>
	<20200327192700.12289-1-briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 27 Mar 2020 12:27:00 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> Remove multiple assignments at initialization and in computations to
> better match Linux style. Issue found by checkpatch.pl.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


