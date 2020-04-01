X-GM-THRID: 6810213860225581056
X-Received: by 2002:aca:ebc5:: with SMTP id j188mr1368920oih.65.1585708424034;
        Tue, 31 Mar 2020 19:33:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:3089:: with SMTP id f9ls8772962ots.0.gmail; Tue, 31
 Mar 2020 19:33:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtGMNMWvKm7FQWdXy1jmM6VsjVxt3bL0zpdRZdOf2SgADQdH8ze8/wRAaLFZXd/X7/yQ3Z1
X-Received: by 2002:a05:6830:19ea:: with SMTP id t10mr14849453ott.200.1585708422979;
        Tue, 31 Mar 2020 19:33:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585708422; cv=none;
        d=google.com; s=arc-20160816;
        b=RDLKFEq8DQ2E5XRzrAEEsnAfTGlqJZ7UaH8h+/F6CJPg+PHWaBbrujSjnihNa/GdrW
         xp27BDNAHRZFOO46r9FfEz/NavfGUVfTfQ7ZkTOV26G6e/AGYuKETG28mXjT+AktITPm
         1akZrLJmlFG4DPCAoznzlQ1uHOOXaKbApPcttlIF8j/A8W901J92e8QSob8xx8bQFE3t
         Wa4Ub/CgaxILSdqX7rbfxGabjvDmwHdA6VeUrss6aGIWQfmxW+UHqnGP+jeU2MRgLKD4
         9T/xV9bI3Kp9zMI4Mj83Tw82mEDpw98bIK6kw1H7g57kssXeKdaz7Kw75GESz7hoXxzC
         I7RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=TmYnzJb33ndFLeUnzK4Wt3uglUsa6ZVK/AsCsGlauzM=;
        b=fsr2o7F3wYrRDTormyJRhnE4/2+3UrQLRDJHvIbdNBjlAxI/oIGGr0C89fIDrFZe+E
         ZeXcZX366JCRpJHS3dktMxI7zzrYrTOhkRZPuIZfCkj7DpbPJUKNGw4jf/MRSM82vYGk
         Zim3R86M1JGQl0e75+qdZw3xYEBQALyKzS9ViT8j7m0Jvrb6S4rp2KVNQjhtZ0fHXPZI
         64sVJKXYoLTkp7/mO76cT6gQgP5Tu4GffXE5Qf1WAh34HSVSqPaQ9uMEsTOsep5qJqli
         FP/WfHYpaELcOriMaLSgBhRFCnDCwQkDm70Y5Y98iG6gUylxLNY66cdWhgcygqFMMKuo
         c00g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=L3VViT81;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id m19si79860otn.4.2020.03.31.19.33.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 19:33:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=L3VViT81;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585708422;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TmYnzJb33ndFLeUnzK4Wt3uglUsa6ZVK/AsCsGlauzM=;
	b=L3VViT81Wj5ti2ZtPUbM7zyvgKmBUr8MIA1WLBKa0FY1BPsyhvihcITig3m5ZeSNODYFn6
	fYIWmCVMdTxNliVdwGybhbRu7gnvCKFsThEElnojb7BS1wnrTOp5adiIHd9wUQeewlqFaZ
	MktSUeuunKOG4vjGGCdoLeZT7m/fkvY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-439-ZpeavMT1PGy55FShXPLmBA-1; Tue, 31 Mar 2020 22:33:38 -0400
X-MC-Unique: ZpeavMT1PGy55FShXPLmBA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2D113107ACC7;
	Wed,  1 Apr 2020 02:33:37 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.13])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AE6DEA20C;
	Wed,  1 Apr 2020 02:33:34 +0000 (UTC)
Date: Wed, 1 Apr 2020 04:33:28 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: gregkh@linuxfoundation.org, julia.lawall@inria.fr,
 forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5] Staging: vt6655: Replace camel
 case variable names.
Message-ID: <20200401043328.6a21c69c@elisabeth>
In-Reply-To: <20200331034751.59941-1-briana.oursler@gmail.com>
References: <20200331034751.59941-1-briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 30 Mar 2020 20:47:51 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> Replace camel case variable names with snake case in baseband.h and its
> dependencies.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


