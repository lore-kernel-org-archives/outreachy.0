X-GM-THRID: 6807094235989278720
X-Received: by 2002:a25:950:: with SMTP id u16mr31298729ybm.447.1584924467477;
        Sun, 22 Mar 2020 17:47:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ed04:: with SMTP id k4ls1407988ybh.4.gmail; Sun, 22 Mar
 2020 17:47:46 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuNTaGXedlAgWAI5qw/dYYDkal5hllYBJbjEFAb8HfO41si50lDbO/iciO9W+D1UVaGo2Xs
X-Received: by 2002:a25:e712:: with SMTP id e18mr10943309ybh.37.1584924466182;
        Sun, 22 Mar 2020 17:47:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584924466; cv=none;
        d=google.com; s=arc-20160816;
        b=uIG4qATvUMBXxBcjx//XN+0q2xT6lgycPFKxg2iPrnkbfi3MkLlYDub3HnpaphgAyu
         ZuaULWnvc2nfp575QBIBDBqym4BYZjW/YbOZ6PlhzEGG5T5UkvOsw2lAZITeV2Ig7pqL
         wvO5BqC+2HHNuFh3nIWUaiW132oI6jWvbCG0j+W9P5nwKBsNmH2RpQ/oX1onZXL3XNBp
         wsx4jPqtBGhrMcg/9RmlN2tZUeWLjR0BY/MZQo+S6+C3PzqMkn9FN83astzDn8Yvv8nC
         w1VZ4pLBHn9MWIA+d7vmJJRpMSRlxF49ZvdtSQVejP5BDEkN4xecK/dIxbWPIFu4+Uz4
         Awxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=5w34oyhjY4quYwn/+K3B/pENlRokU5v4sPNwSHBfUV0=;
        b=GtvVG5oorCcuSwZlE6fsNx5JSsBEXADGcDw1LcJCGCRn4k0IYmU1h+dr28iRcxTR88
         FTEgt9B0iE+lGyQvCjgLDEY/ka5+JX1WtUdwj2s+ILk+NInmFD2e/bbLKhHm2eUKjnFN
         1aBW4jx69WoVwOEL2GZR09qHaAd3F+9a6iFDNfY8DqUNoJnjq2MbnPvpdRqSusavsUnT
         rP3Pccm2rCIBU8q+TmPXwlLs3FWljdQ+RGJ3c/z8QSid/+y2N/XMJeR3Bgia8LOWZNJ4
         O+xgJ2pbOfi+Fu7cgyOBzAz08VOe63RTAW/DpEM83T88Ip99c1YoDc7t1JlV5Gl07O4k
         5Rng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BDZsFElf;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id e14si1003464ybp.0.2020.03.22.17.47.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 17:47:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BDZsFElf;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584924465;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5w34oyhjY4quYwn/+K3B/pENlRokU5v4sPNwSHBfUV0=;
	b=BDZsFElf+YAuJ3JyIMJ2zA01jpvV6hsSwMLUZSKWyntndVV23I/V+5ZN0IjgQm8UE5zVSm
	dTVVe6t1GpD/rDta+3FFzKLG8Yp0gvQIwjZIPIOHIu+en1zkVphxUaKh8GpzDXiLnL6Iuf
	un0sHwRnpzoZVhlt0LJ5skr84yMCuYE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-5-MBQ2eMsCOSqYsT7UJsKSmQ-1; Sun, 22 Mar 2020 20:47:44 -0400
X-MC-Unique: MBQ2eMsCOSqYsT7UJsKSmQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C627C477;
	Mon, 23 Mar 2020 00:47:42 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 25D1ABBBC2;
	Mon, 23 Mar 2020 00:47:39 +0000 (UTC)
Date: Mon, 23 Mar 2020 01:47:34 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 perex@perex.cz
Subject: Re: [Outreachy kernel] [PATCH] staging: hp100: Remove uneccessary
 blank lines and resolve indentation issues
Message-ID: <20200323014734.09d3f25a@elisabeth>
In-Reply-To: <20200322180154.GA37392@ubuntu>
References: <20200322180154.GA37392@ubuntu>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 22 Mar 2020 23:32:01 +0530
Soumyajit Deb <debsoumyajit100@gmail.com> wrote:

> Remove uneccessary blank lines which are flagged by checkpatch.pl as
> warning. Remove space between function name and "(" .Add space after ","
> and remove space between "(" and next character in the if statement.
> Reported by checkpatch.pl
> Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>

This should be in a series, see my comment to your previous patch.

-- 
Stefano


