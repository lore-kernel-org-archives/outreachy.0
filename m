X-GM-THRID: 6801796609244921856
X-Received: by 2002:a63:f84b:: with SMTP id v11mr11824943pgj.133.1583670805162;
        Sun, 08 Mar 2020 05:33:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:3e0c:: with SMTP id l12ls2517539pga.7.gmail; Sun, 08 Mar
 2020 05:33:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vteHv4YJ/jMH5OddAEYYeB9F18OgD4F1gy0Slo9uVtM8JXnOvrmLpyAncMOc15vOEmwM3Mc
X-Received: by 2002:a62:1d52:: with SMTP id d79mr113526pfd.53.1583670803686;
        Sun, 08 Mar 2020 05:33:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583670803; cv=none;
        d=google.com; s=arc-20160816;
        b=AmZk1+TlVBQOhwn4duRGxM4I9eIKpSXgsMxJj1Gs4iGDJsWCCjKfHh3FlHQcjStgTe
         zSe5sM6dJL4x+/Iyvh3uDa3XapBO8TKjX27qDEZHUvSzp60cZX8zi+/ND0FNvfpG8Jqx
         1wtnpLeVdhBpJ8BY/HPR6crzp/z16/xWiZrvqpmzTJE/pIDBmsUGl6DS3h23RX8bWNZR
         YtF2Yeg+JlDRnIBso60WqBZZWmCMChdnLUj07EZ0/OLlfL7Plv5xpvAbhQraQjLEV1CV
         a1o8zKCYBYB+d+uC1o9ktMmUPFrXNMZcmf3dgqWHxrhoqRzza/Ddm44THLJROLNaiclS
         K8cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=RYCE/z5lKBY8TiGhWbUUE43HfT7DC3eZj8II/ZPG0Js=;
        b=t5PbO9l4PT42xlI5KcXhLbsR+hsNS2XNOXAGSYgypavwzBrI89NHakZf3KNytCSSVJ
         fN+gFvdQR42XkhvBN0gCNx+M8ArZYVEBbb/ConpaODpKBME/TiLtkzLvSRKobgHVPEp6
         eqNsr52N0UykCA0823HRx5zsOCC60DqYG3N5ZBHrAFTs+/8q7HQBlMUZTtFNiM6Sli46
         feYNakDZzc1LwjhvWz77VstIY2Y6GohrQ3JsLdWyQmvG+1q4LZOiEvZyZ8UdKsVy6VlJ
         5MHQs9FsZzuGpCLICvtv/oNuPHAhJ2er8YBylTbjJM1KZ01pDlPoFJvr8d2b4Sk4lOmK
         vCxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="c/sUVr8F";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id s92si327159pjb.0.2020.03.08.05.33.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2020 05:33:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="c/sUVr8F";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583670802;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RYCE/z5lKBY8TiGhWbUUE43HfT7DC3eZj8II/ZPG0Js=;
	b=c/sUVr8FOQe192WDhXQz/+L4fRFADGsl5fgt7oJO0yZBiTFcjJjJ0S3FKALrgpk2YZJ5Tr
	4S/VArgT16ZHox5v1on6NIs+CBlUyMzfnwQHs25uD93dbDNiF3juoNgj1zjjk4Lyh9RNt3
	/uREf3QAT/z756gd0SinAtyx0Ne+2W0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-15-OO6s_TblOM6mh1BeCDsqjA-1; Sun, 08 Mar 2020 08:33:21 -0400
X-MC-Unique: OO6s_TblOM6mh1BeCDsqjA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 36D36477;
	Sun,  8 Mar 2020 12:33:19 +0000 (UTC)
Received: from elisabeth (ovpn-200-26.brq.redhat.com [10.40.200.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 71E4190A03;
	Sun,  8 Mar 2020 12:33:16 +0000 (UTC)
Date: Sun, 8 Mar 2020 13:33:11 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Julia Lawall
 <julia.lawall@inria.fr>, Vaishali Thakkar <vthakkar@vaishalithakkar.in>,
 helen@koikeco.de, Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] Using 4.18.0-rc7+ kernel
Message-ID: <20200308133311.6d8ad490@elisabeth>
In-Reply-To: <CAND3PyeWnvf4Zu87m_kOBw6Vz7MOwJfpR7wHUyh_udvEDvpJdw@mail.gmail.com>
References: <CAND3PyeWnvf4Zu87m_kOBw6Vz7MOwJfpR7wHUyh_udvEDvpJdw@mail.gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Shreeya,

On Sun, 8 Mar 2020 16:54:30 +0530
Shreeya Patel <shreeya.patel23498@gmail.com> wrote:

> Since the compilation process is very lengthy and takes a lot of time

I just touched this topic with another applicant: if you use all the
available threads on your CPU this is going to be significantly faster.

The tutorial mentions this. Another thing that might help you is the
'nproc' command. For example, on my laptop:

$ nproc
4

this tells me that there are four available CPU threads.

Instead of 'make', I would then use 'make -j4', which speeds up
compilation considerably. If you want to ensure your system is more
responsive, you might decide to leave one thread "for yourself", e.g.
'make -j3'.

-- 
Stefano


