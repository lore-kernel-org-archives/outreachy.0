X-GM-THRID: 6802944332146933760
X-Received: by 2002:a17:902:7007:: with SMTP id y7mr3859292plk.208.1583946613977;
        Wed, 11 Mar 2020 10:10:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:5f8b:: with SMTP id t133ls1243732pgb.1.gmail; Wed, 11
 Mar 2020 10:10:12 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvKkfF5M+rGU676/PXwpRHBXmUeT4NDsuk8D8kmBqMofrE2EUtmlGpM7TWHpLTSW1vUu2Z4
X-Received: by 2002:aa7:9f03:: with SMTP id g3mr1807191pfr.287.1583946612143;
        Wed, 11 Mar 2020 10:10:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583946612; cv=none;
        d=google.com; s=arc-20160816;
        b=Ix8cnw46jOBntxqaxAmHliRdAYLE2sIyvy6zuOyjq5Ga/n91x3xuaMZQICOSCBLe3W
         srffhiCIfaLghAEdWPFZyQUUYoiGnX8FW8zhmQcszokb8r7GolkyzrNQV0PWsKVTqhdh
         Gk56Zs1pYxiPQGlCAq87jWpcu0FjoTTzuQWfeuuA1RGdRdLd42OPdoS2YU0lSPZ0rED4
         zdzFUV7T7bl0k7a63+CVDQNgBZEDm37oiMqs513QgC9lomjlamolUbD6EnG2ywJsOGbm
         oOcajZxnGqFeEDMGQlxB61xxL/w7Y/j0LmpE39GWyKa9X5n0KqMwL0OBb+ctORa+Yijl
         s5yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=MmvQnFre9q44tGApF0Zup0WXa8stb70tDzeRZGHdiYU=;
        b=TkOan84gQykcxYI3zrPBrEn/6bTh8erl+1P0V0lqXNlJTILow8n0JPBQ+Wl8wCPCkR
         VanUTv8c2D5ERpg785+8wwmVOBjQVeg9RroWwjfZD+EvTdMSIPP1U31LMRQpydUY8Lm4
         H0NDpm6M2XO3MN1A6DNlTQM0NkNizf2VW9GPrEUXnXGVQFxLii6GmpfrzpyBLzhErCxd
         rDF2HniMIQsSLLjHvrLVb4Uc3xMTwv+1fZLIk3wfx6/6m0jD+oLoMazpe/IVwahvaPXF
         TvZtdjuiKB6srnczpgWkqJOO4++jyuq+t6pOdlhyXYRBQ6kU+H/BpdgTa0p/Xt6SCkGv
         xxDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Wx41H8WT;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id k3si90608plt.1.2020.03.11.10.10.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 10:10:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Wx41H8WT;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583946611;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MmvQnFre9q44tGApF0Zup0WXa8stb70tDzeRZGHdiYU=;
	b=Wx41H8WTaeO6RNN35T5wJT2YVP589khd/HgSHdnABP9dJeZApCjDPT6Y/3kAcvJjTPTZbq
	D352esv+M3Wx5N2wwg9uPbP06JAS2fE7i3ygsBgsfqIzqevNULX36jbiM1SB5fjnG4OmNJ
	pZmynVJ7honTn0XWaJ1oFRyIQBhn77g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-457-_5UnDH7BNqOVzCkG15BNyg-1; Wed, 11 Mar 2020 13:10:09 -0400
X-MC-Unique: _5UnDH7BNqOVzCkG15BNyg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A7A20107ACC4;
	Wed, 11 Mar 2020 17:10:07 +0000 (UTC)
Received: from elisabeth (ovpn-200-42.brq.redhat.com [10.40.200.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E65288D553;
	Wed, 11 Mar 2020 17:10:03 +0000 (UTC)
Date: Wed, 11 Mar 2020 18:09:57 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 daniel.baluta@gmail.com, nramas@linux.microsoft.com, hverkuil@xs4all.nl,
 Larry.Finger@lwfinger.net
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: sdio_halinit:
 Remove unnecessary conditions
Message-ID: <20200311180957.0710195e@elisabeth>
In-Reply-To: <20200311133811.2246-1-shreeya.patel23498@gmail.com>
References: <20200311133811.2246-1-shreeya.patel23498@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11

On Wed, 11 Mar 2020 19:08:11 +0530
Shreeya Patel <shreeya.patel23498@gmail.com> wrote:

> Remove if and else conditions since both are leading to the
> initialization of "valueDMATimeout" and "valueDMAPageCount" with
> the same value.
> 
> Found using coccinelle script.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


