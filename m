X-GM-THRID: 6802879895263248384
X-Received: by 2002:a17:90a:202f:: with SMTP id n44mr22025075pjc.150.1584306834647;
        Sun, 15 Mar 2020 14:13:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:745b:: with SMTP id e27ls7807472pgn.11.gmail; Sun, 15
 Mar 2020 14:13:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuXgWYlgqID2GYyA4biSJREvw+NINolBKqX8NWUpbuMi0IReu3bnimHRffgTv90xD6f39Cn
X-Received: by 2002:a63:ce42:: with SMTP id r2mr25097936pgi.106.1584306833065;
        Sun, 15 Mar 2020 14:13:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584306833; cv=none;
        d=google.com; s=arc-20160816;
        b=W2qIgkVFk81OfgO8ozK1Bwjfmq6WunpJ+QFt/6aGz/ag62asrQWOvzstSUgGo58Msn
         U0wsOxAnfCPtfmZggOyds1wKeyegLw7cN+NGWmBfGisEhoaCysykY2/4kGY2/8pPjXUj
         hgtryf7dXgjVj/F3mQr2ZleTe+/mglRSZTdZDmU0OmKpar8XTbRbXa9m3epF6mHq/jW3
         xqgFAAecaD9WvFPg3MhThGmNrtJPLrLt1BZY1QoGpShPGoNKUIIX9sA+6CYhD90OFC+P
         IoNkQv65TMp+BczdzpylQgNcL2X/dzGZxNDhRpHGBrtCxCbse3kokyAMkO7/X2OTBsZ8
         zGug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=dsQCU4aQEYkGbljrbY5zulkcoXQWNNnuDrGi8GnBMG8=;
        b=m5hUWs3Hbdm8LntK1Ex7a66lAFWDk1caoBwNCf0ufC/NauzLIWvwyr9G2FsNESp2f7
         CQg1cUZC2ubvGhjKAMHb42esuJDcm2XSiyuU2yy/elExKHT8i4v5bxxLzpYsNbFJzV5w
         oa+Ri1awZjmo0m+Y9fbKbUbLd4tXPUk17o/H6AAUoeqw6YbGF+nwZYhYN54rHLQ57hN2
         SutrMP9DGthJn0GilMF0zDaIkt8BRibG6rsVniphTh5MRQZJFLuRNTnNnmTS40zx6Y7d
         3woUdtKlE7Wovo4fct9gdPDsgqVaeKE3A0Uje03+T5QenEACdPgEF1UwutV40XlQXB6b
         2ZXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=fyTepldF;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id u15si180098pjm.1.2020.03.15.14.13.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2020 14:13:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=fyTepldF;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584306832;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dsQCU4aQEYkGbljrbY5zulkcoXQWNNnuDrGi8GnBMG8=;
	b=fyTepldFPoO21eROBWpB+qLqiUeQqxDPq1iJJW5GWjiNAwp011otmK7izuV0JAbCWV7PRW
	aEpdm/WM2UUdALiCm7UQxQMYfdnyalwcb+ONGkiL9p9Ox5Y11meKXnkufjIgMw9q0tTf0P
	XGOSsATkX+0U4msYYAnxl8HHtuIa47o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-466-qzTJ660rNniKY_MjjaFUIg-1; Sun, 15 Mar 2020 17:13:48 -0400
X-MC-Unique: qzTJ660rNniKY_MjjaFUIg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 39CF21005509;
	Sun, 15 Mar 2020 21:13:47 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 785BC9351F;
	Sun, 15 Mar 2020 21:13:43 +0000 (UTC)
Date: Sun, 15 Mar 2020 22:13:35 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/4] staging: qlge: remove
 unneeded variables
Message-ID: <20200315221335.60ae5b44@elisabeth>
In-Reply-To: <20200312190624.24167-1-payalskshirsagar1234@gmail.com>
References: <20200312190624.24167-1-payalskshirsagar1234@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 13 Mar 2020 00:36:20 +0530
Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:

> Remove unneeded temporary local variables from the files of drivers/staging/qlge directory.
> 
> Payal Kshirsagar (4):
>   staging: qlge: qlge_main.c: remove an unneeded variable
>   staging: qlge: qlge_mpi.c: remove an unneeded variable
>   staging: qlge: qlge_dbg.c: remove an unneeded variable
>   staging: qlge: qlge_ethtool.c: remove an unneeded variable

For the series,

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


