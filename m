X-GM-THRID: 6804610075497332736
X-Received: by 2002:a37:5647:: with SMTP id k68mr1770903qkb.33.1584392894682;
        Mon, 16 Mar 2020 14:08:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:efc2:: with SMTP id a2ls4489725qvt.5.gmail; Mon, 16 Mar
 2020 14:08:13 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvIsz9PDdiBbyaUNamJBt3kGshOGbBwVS8F9eoilNkNZ1ntV9j4F+fJfeuMWjS4Ux/srs63
X-Received: by 2002:a0c:d603:: with SMTP id c3mr1814122qvj.45.1584392893006;
        Mon, 16 Mar 2020 14:08:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584392893; cv=none;
        d=google.com; s=arc-20160816;
        b=IBG1enhsRE6YfHLH5iBFPS3WyZ1t28lR5gP8A18w5r3pkmRj6iglP7g0qqgb7zhoyW
         xDDTB+7Go0R58SYazCG1y3fodfNFqNwMEMMzAsf+sKOBgqlX76wuPaWwy0SyzgbtPKKc
         7VM0ag0t1SH+VRcC4oh7Zcq7p5FfUP/rDINuTNGE5q/BRgqTwFXrRIO6C94lNHfK4X0i
         a1+M9pkkc//2ngAcStOX3Ay8I2HP9NpUOlOjbtllbCcR/OeQzhjwn6xnDekNUO6GB7py
         lnkHoEFuQLLxFVL0r3dXUjIW4l+arZOf8Mn7iTxdjIuHjC4zh/K3C4V8O/cEtzaiOokI
         NBSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=jdUd1j0ax77P59P4KvfXGuEkgggmC04B10pNIdocwwQ=;
        b=qtOPBeWteqpdVcklhiyjsldsAcAxkN8WhFtECdVG8AN4jtXSJLUlH0CELeZVKMcq+X
         CUxNLVfoIdajwIbhV3Q071l0/qOyhA4WWHQrjupRUCCVDZec3N7EYPScmP+dmrBUu6YB
         1SrI70muxVPnUA6m4vJD43nJpCCCpksWeXpBDV3CPvj17XR0Foci/qTqOGAbvgoGPkIr
         vnxCTtTd6uMg+axKFuDGlwX+LbqFQNpt1voW53hYFocsIMYfa3zNaw7NqET9KEi1ibRr
         yb0r1mfPImEmo1792TQ6J89CrlT9XrcWVaP0RjbBhNOT8n23P2vMV3rNfF09vQbEL/qk
         ggrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dCjrHIBw;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id c2si28264qtn.0.2020.03.16.14.08.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 14:08:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dCjrHIBw;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584392892;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jdUd1j0ax77P59P4KvfXGuEkgggmC04B10pNIdocwwQ=;
	b=dCjrHIBwpWKUbNjmK0Ny20UUAmzrDlLTElk3WNdrVsX1y/7utSkQM6z1c6aQ9eWf0Qwns2
	Ba1MEtuAA9v0K3tDML01mrrpW4W2r2E6sdAdxerY0RXwMB0vhw+Z1F4vop1FbxkNssuqOC
	4NMMfX86beYPBiB7ZyQ2bCQJAGVjdAQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-293-y011nX7yPKOSuAAqbefzqg-1; Mon, 16 Mar 2020 17:08:06 -0400
X-MC-Unique: y011nX7yPKOSuAAqbefzqg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2D53D107ACC9;
	Mon, 16 Mar 2020 21:08:05 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.13])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 62FAB5C1BB;
	Mon, 16 Mar 2020 21:08:03 +0000 (UTC)
Date: Mon, 16 Mar 2020 22:07:57 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: John Wyatt <jbwyatt4@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2] staging: wlan-ng: Fix line going over 80 characters
Message-ID: <20200316220757.39e4b623@elisabeth>
In-Reply-To: <1f03af664ed57dca20821d59a4af282ec6f32001.camel@gmail.com>
References: <20200316012148.1200745-1-jbwyatt4@gmail.com>
	<20200316193723.1247875-1-jbwyatt4@gmail.com>
	<alpine.DEB.2.21.2003162050510.5216@hadrien>
	<1f03af664ed57dca20821d59a4af282ec6f32001.camel@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 16 Mar 2020 13:03:20 -0700
John Wyatt <jbwyatt4@gmail.com> wrote:

> For v3 (v2 is also missing the [Outreachy kernel] tag - did I reference
> the previous email properly for a v2 patch?

On Mon, 16 Mar 2020 12:37:23 -0700
"John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:

> Add a newline before the second argument for style, readability, and
> consistency.
> 
> Please note checkpath reports the third argument as being over 80
> characters, but not the second argument.
> 
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
> 20200316012148.1200745-1-jbwyatt4@gmail.com

No, that's not the idea :) You can use e.g. the Message-ID of the cover
letter to post a patch as part of a patchset by setting the
In-Reply-To: and References: fields in the new message you're posting,
and many years ago, for some subsystems, it was fashionable to
chain-Reply-to: subsequent patches (or even versions) -- I guess that's
where you took this from, but I haven't seen that in ages.

What you need to specify after --- (and before it for patches on
netdev) is a changelog like:

v3: Changed something else
v2: Changed this and that

see recent examples on this list.

-- 
Stefano


