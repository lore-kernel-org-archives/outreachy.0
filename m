X-GM-THRID: 6810562968301862912
X-Received: by 2002:a05:6214:3f2:: with SMTP id cf18mr19975929qvb.28.1585710983044;
        Tue, 31 Mar 2020 20:16:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:ee22:: with SMTP id l2ls6116142qvs.5.gmail; Tue, 31 Mar
 2020 20:16:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsguNbhqJQQfZlObCxwta7x/D4WYk7VwtbNihNA5PqRTeIUTCDy3tdMN3WmuzjKCZLXHUmG
X-Received: by 2002:a05:6214:188e:: with SMTP id cx14mr19977074qvb.187.1585710981648;
        Tue, 31 Mar 2020 20:16:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585710981; cv=none;
        d=google.com; s=arc-20160816;
        b=s7zFc44zyByicN6Aoy/A1XOUCRlIA2bCKaakYXCNEXnpz0R/IL1D2NnDjDaw13f07w
         VQvzrxMRpLeenBP/8rqSbNgTSvZIt6+vao5NzUWFtjZkamraz441xoytSlZPcTxDRQAX
         kiXosjSJliIcXLpw62Lgs1C+tFMkwDTPjFxCvJTDwweMSiXYqT9bKP77my9c7yKxY9jJ
         eqWGWT2Yyoy22NiGEZDZB6OADK6YSJQV0VhV/JEdx1Oyvfwf7oAwjRCEohju2wZ86+9h
         5ov0YeBMX0m/MFVgbFT5yPfXPLQHs9V+s3h2jZ0M2rqHgMPLBZTZEeQNRlI6mqL0H+E+
         keTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=gE3FKw66qDJOxDOX2qQ+T2Z61WcBoTIHCaftP0DnU1s=;
        b=CMbjjMxt0QiCJRp8FRxX8PvO28O2GdA2tdr6LYD8DNz3i4XASqXpRCdBZABF/gsm6O
         24sj19uR17ebS/79wtvfIo47Hm7oMFAmF/jj1ngOhEz5R6AZM6Kwvqoj+z9dJ/LDi9MZ
         IoTWarq4m3dOz+Yu5i2QDwuuZGcYiFRFF+wdBBcg+6CgOysVnCL37404L7HLS7H2PqYc
         AWrqBtpqFNM5BIALV1RbgAuniJQaBQ5vqFeuYrjVQ388eYrCUnHRBtVCR0RCbuHgf02D
         /wGbz+QYshVzeHmDHSVCH8EcGHTK0oKnJBBXmBVLE7vYU8svNLGCLhoP9mGwaq0C7wWI
         8VYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=U9bEo1ta;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id t24si65916qtt.1.2020.03.31.20.16.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 20:16:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=U9bEo1ta;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585710981;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gE3FKw66qDJOxDOX2qQ+T2Z61WcBoTIHCaftP0DnU1s=;
	b=U9bEo1taamMwBOUkDB+Q2exsBVfELpfpO/bR7acqHrLtNAZqCv+t8P0KMvTzJDwfFmzTRu
	1Hcoy3ByxS8x6UnL4qXKv4A2J2llzrm1c0tdknVkH6YoeTrkZKxN0Mij+EKyw4oz48f7rV
	emWpUCwW2r96a8+ziaIp8oA/LhfeglE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-430-XCn3sDbQNFeRw2OGyGCBWA-1; Tue, 31 Mar 2020 23:16:19 -0400
X-MC-Unique: XCn3sDbQNFeRw2OGyGCBWA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 42DDB1005509;
	Wed,  1 Apr 2020 03:16:18 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.13])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 88D325E022;
	Wed,  1 Apr 2020 03:16:16 +0000 (UTC)
Date: Wed, 1 Apr 2020 05:16:11 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: gregkh@linuxfoundation.org, julia.lawall@inria.fr,
 forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Patch v3 0/3] Staging: vt6655: Remove dead
 functions.
Message-ID: <20200401051611.2e591310@elisabeth>
In-Reply-To: <cover.1585707212.git.briana.oursler@gmail.com>
References: <cover.1585707212.git.briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

About the subject, my personal preference would be "unused functions".

"Dead" is *probably* universally understood, but mind that it's only in
a few languages where the equivalent of "dead" can be a synonym for
obsolete, unused, superfluous, etc. In any case, that's also fine by me.

On Tue, 31 Mar 2020 19:22:31 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> This patchset removes functions that are not called in the driver but
> are prototyped in card.h. Each commit limits its scope to one function
> definition and related documentation in code.
> 
> Functions were checked for calls using the Elixir Cross Referencer and
> git grep.
> 
> Per Stefano Brivio's recommendation, output of bloatometer script after
> changes:
> 
> add/remove: 0/3 grow/shrink: 0/0 up/down: 0/-532 (-532)
> Function                                     old     new   delta
> CARDbSoftwareReset                            10       -     -10
> CARDvSetLoopbackMode                          14       -     -14
> CARDbRadioPowerOn                            508       -    -508
> Total: Before=36131, After=35599, chg -1.47%
> 
> Briana Oursler (3):
>   Staging: vt6655: Remove CARDbSoftwareReset definition.
>   Staging: vt6655: Remove CARDvSetLoopbackMode definition.
>   Staging: vt6655: Remove CARDbRadioPowerOn definition.
> 
> Changes in v3:
> 	- Update language in patch series name at suggestions from
> 	  Stefano Brivio and Julia Lawall. 
> 	- Remove references to the changelog in the cover letter. It is
> 	  unrelated to this series.

Changes can be listed like you did in the cover letter, and that's
fine. What I tend to do, and I think it's helpful, is to only present a
small summary of the changes in the cover letter, and then add detailed
information in each patch, so that one has them at hand while reviewing
the single patches.

This is almost irrelevant here, because changelogs for single patches
are discarded (don't hit git history) just in the way the cover letter
is.

However, for some subsystems (net), where the changelog for single
patches is maintained, that makes a substantial difference.

In any case, for the series,

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


