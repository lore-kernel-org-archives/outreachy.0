X-GM-THRID: 6807140134242222080
X-Received: by 2002:a25:3212:: with SMTP id y18mr30444525yby.412.1584924637971;
        Sun, 22 Mar 2020 17:50:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5b:5cd:: with SMTP id w13ls3247079ybp.10.gmail; Sun, 22 Mar
 2020 17:50:36 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvxhGwsUuCDk1O/CtizczHt2/JVWJ+wvRonsn4JbF9DNdUiLIEoQXYCUlh4oev37CbWvL3p
X-Received: by 2002:a05:6902:50a:: with SMTP id x10mr31404499ybs.347.1584924636375;
        Sun, 22 Mar 2020 17:50:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584924636; cv=none;
        d=google.com; s=arc-20160816;
        b=dBeJ0pGUmDCxhbOKg/q/sjesPZhysJBD4ApP/L3g1ajTh9Ad4BKKOjf6QPh1OY7DK6
         9UIWurF5GepgM4s0oD7AKTaw9N+k0fClj2Br316oQbary5lMXK6O2Cbj8xPGCU6Q9W1f
         KlybFMD2P9O70lE02daG0icVOKMyMVAHHfBxIh69a03+VhVa258Ry7tzKpyXtxzzlFkS
         35ZRMDrlYzHi1TptKk3m3btpmP6e2FykR4T9FOX1cf2yzjR2nEKUMGXp0o2e+Bpy7fHh
         6eLGY8NUxEJ8SDrzLDGLbQzdi6hCiNr31PlYOmCL54GsrB0Orwbn4BObeRmdc8wYFqwM
         4fiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=F1csq4wmObvGbHAvruCkATNIBhKgjD7fTJInBJWhOYQ=;
        b=Xdyy5XN16qk5Ud0sPDk2CVPs/rcy3dTf3wO3qAo1D5pVw9+m0CPCxl0mL02rzmGfcs
         34STYlTBbMCW/OMw1qobcTJm72yaJ9u8vJokoTv0U42RWjgQzTPGjN4kA9fm3Euup2sq
         Q2T/M2073MGWDbP7t53msCOkiUXR8sGLWg8JJtqmRif3VsvpT1ARzdH6zbbquXHJVA29
         n47JRjZLsXZtiVyfpzrxiMjniWk0ljPVUGIXLCBb63D5hJXXKfCH+nT2k29efNzKaRSm
         UOKz+8zGX0B6RcARd2EWkzqKsCyNFoNqH3APDmun7TpwOOctpxDSGGq9WNwdJFLEQ3pS
         TB/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=E8X8PLi+;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id x13si993789ybs.4.2020.03.22.17.50.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 17:50:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=E8X8PLi+;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584924636;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=F1csq4wmObvGbHAvruCkATNIBhKgjD7fTJInBJWhOYQ=;
	b=E8X8PLi+vZ8zdR0v46c/HowXE0upjwx90pSTa6B8kD6PE9rx2U/NgMv4jKGGeeuU4ciN3e
	gNoGd63jnJ3kIWE2gKXSrXDe7zaup+dbBcYNpImZ/3YBxTLvmtBJEQ+6PwbTcJOtG8Y5Y+
	jt/SL3V5/wapzx9vHgmkvzZnQS8Mgvo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-444-eBfCYCF2Ok6qXFSY1URTvA-1; Sun, 22 Mar 2020 20:50:34 -0400
X-MC-Unique: eBfCYCF2Ok6qXFSY1URTvA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A50B1477;
	Mon, 23 Mar 2020 00:50:32 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B7D3E5C1B2;
	Mon, 23 Mar 2020 00:50:28 +0000 (UTC)
Date: Mon, 23 Mar 2020 01:50:21 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com, Sakari Ailus
 <sakari.ailus@linux.intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [Outreachy kernel] [PATCH] media: staging/intel-ipu3: Remove
 extra blank lines
Message-ID: <20200323015021.5a8401b5@elisabeth>
In-Reply-To: <20200322210005.GA27747@deeUbuntu>
References: <20200322210005.GA27747@deeUbuntu>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 23 Mar 2020 02:30:10 +0530
Deepak R Varma <mh12gx2825@gmail.com> wrote:

> Remove extra blank lines from the code blocks.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


