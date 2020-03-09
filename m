X-GM-THRID: 6801909209397985280
X-Received: by 2002:ae9:f811:: with SMTP id x17mr13596036qkh.207.1583754098746;
        Mon, 09 Mar 2020 04:41:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:5057:: with SMTP id h23ls3495794qtm.8.gmail; Mon, 09 Mar
 2020 04:41:37 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuu7Qd+ulIjNW6rbqUB6jpHd8ptMI9o13hBl/Z8ReEIugCNe+VfukzSm5QYsYfZv9qSlAoo
X-Received: by 2002:aed:3e8e:: with SMTP id n14mr11578244qtf.245.1583754097581;
        Mon, 09 Mar 2020 04:41:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583754097; cv=none;
        d=google.com; s=arc-20160816;
        b=P7WXGAwGhnYoOyBNUPZxxwBRGH+iLHKXTjJC2sLOoqNO72VjQu7d3/oqZEm3v+0jMq
         gYXvMaxyZ/5dAre8Ip5/rYXdNKq0gS8+9HnaqSsrfqRQbBcTnAdcHlOVyXNTUIKCbm8d
         7qu7aI2ZhH4JFmh/05IG+nQUkjIE30mgHnBlWFyOoKRSdwTcsDDEMAmuXnO+pR3wgHMA
         gqUcWNmIx/RxBaiG87dL1AsknTHysZnIk1OywNka6PNTQ5vIqAgVb6SdO6q/+groDgI0
         pycw1xCbHzePh6VlPm7s9uqRxqvwmuUxwF3wF0/dqsv2SWiDPyMjROXjTnRayAs4AqZT
         xv0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=uqybIHWcsy/qmwfAriyK1E/1idAgAO0+lCmcUHroPZE=;
        b=GZbx43GWVk4sItk7+WxrZ5VScHyZ+paWO3s/5VyJe3iaxlOSxzw3BZmW4eLv7XMEn8
         8k/7bqwzzckixM49evzg4KYl2BzUK6S10fmjPjIcZigqmivRacM3tYtF0JIg0dO4Y9KI
         2CabhzMAwuGAjJZvOvSijeluxlU5JjgxuMEbK8Ki6GLZgs4Ug1VkZmRGfLwe6JM4k9xJ
         EodT2PmW5/5IAlZcPkjBZuL6sdg+DBv72TG7B50lgpmsdf/WgkibRn63yE5K/Ub2Sc/d
         6fY0GOAEoEV5E+XaLfAtRpdZ8iAicFFPNu3azG6C2KbJfw+VDjohiM/EHnFUV0yj/n9l
         jmUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Dna20TN3;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id c6si598387qko.3.2020.03.09.04.41.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 04:41:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Dna20TN3;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583754097;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uqybIHWcsy/qmwfAriyK1E/1idAgAO0+lCmcUHroPZE=;
	b=Dna20TN3BhJz464fBirYuw4uaQ6+8oWw4mFVhIotlZjzdvvXIv34fJ3CK4C9zNQCIX6jmm
	kRJxLze4sEoO5C2BqXQ26p1ISbRoyXEUZ3JPysQajCrobu5FK8NOWADAerc+T+VcEYWVf2
	Ix8CkBRJdsFvZw9i4z/FgPnq5k8C2EU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-477-TukY40jrPB68iv42BJaYQA-1; Mon, 09 Mar 2020 07:41:35 -0400
X-MC-Unique: TukY40jrPB68iv42BJaYQA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D6280100550E;
	Mon,  9 Mar 2020 11:41:34 +0000 (UTC)
Received: from elisabeth (ovpn-200-26.brq.redhat.com [10.40.200.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AFA015D9C5;
	Mon,  9 Mar 2020 11:41:33 +0000 (UTC)
Date: Mon, 9 Mar 2020 12:41:28 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: wfx: remove blank line
Message-ID: <20200309124128.10c8bf6d@elisabeth>
In-Reply-To: <20200308184130.5458-1-payalskshirsagar1234@gmail.com>
References: <20200308184130.5458-1-payalskshirsagar1234@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon,  9 Mar 2020 00:11:30 +0530
Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:

> Blank line is not necessary before a close brace '}', remove it.
> 
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
>  drivers/staging/wfx/data_rx.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/wfx/data_rx.c b/drivers/staging/wfx/data_rx.c
> index 5d198457c6ce..2a09f6b978c3 100644
> --- a/drivers/staging/wfx/data_rx.c
> +++ b/drivers/staging/wfx/data_rx.c
> @@ -62,7 +62,6 @@ static int wfx_drop_encrypt_data(struct wfx_dev *wdev,
>  	memmove(skb->data + iv_len, skb->data, hdrlen);
>  	skb_pull(skb, iv_len);
>  	return 0;
> -
>  }
>  
>  void wfx_rx_cb(struct wfx_vif *wvif,

As you're removing one single blank line from a single function, for
the future, the commit title could be more descriptive: "staging: wfx:
remove excess newline in wfx_drop_encrypt_data()". This might be
subject to personal taste, though. Change looks good per se.

Same here, you should Cc: more people.

-- 
Stefano


