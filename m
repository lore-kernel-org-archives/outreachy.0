X-GM-THRID: 6806226770839207936
X-Received: by 2002:a67:d982:: with SMTP id u2mr3114215vsj.164.1584924492373;
        Sun, 22 Mar 2020 17:48:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:8797:: with SMTP id j145ls1553436vsd.3.gmail; Sun, 22
 Mar 2020 17:48:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtMLWuRkSIblsbtv/Wl27nGQC9RjhL4u+1Vdy55CkQqQWTGywsd/TFdgs7IhwPUdRE9v1kp
X-Received: by 2002:a67:eb81:: with SMTP id e1mr13968458vso.27.1584924491078;
        Sun, 22 Mar 2020 17:48:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584924491; cv=none;
        d=google.com; s=arc-20160816;
        b=dEy27E/0cA5OtMPF4cXOBS5bNDRrSSmd0VlkcVpis9z9xGA19u+zn5w67RI8slN5Pg
         ma77I5ciDpLbIz6oJS/Il7O4obN4sEhcnm5WnIowX+C5FCB+rCUjKd/4pxmOlWaz7Lvr
         eCYnqA60SMrtBBfx0MFzI1BP67tcuIh+WFmlasHvYOUhYWZFH6w4nzoM8hEQWzMxlgbu
         Oll1oSyaIZyKG+Tka1mn40KY37YN14Jeld1gVhhg3MXEULSyM8czpbcS4ZjMiTE4wY+A
         ef27cjW+UXEyEGk77Z2d3v8EVU04CfBBDhG583jqmW8yKbpRxzEuP7Lr0E5LJm3uGmjL
         vKTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=ctgwhg0Zy8hAy9old4I6xSejNXyyPKIVIE9Mrag5S+E=;
        b=fBPPnuO6WjPZfbn8Bn8cFsbPKA3ykLn4dX8X+TMtMnC67kJEofSzy6C7Uob5u8yU3F
         3leytjykGQ7mk/iESnfTKTn1nWGP3bol+/TmXqzcCQfAZO/pE/YlnoY2qMKuIaHqzzrt
         ZK6RewMWzvsCnUoWbf0snGN+ZL6I4dZg3hOholGZ2+Zi9x3+H6sx4rjql6uJ1v2kjBxt
         mrDmwrIEYUOIKIQgLfKo8Ky91lqpQhJzUwOBtr4rAjvWw8afCs63lK+EyO3sJS5mUasE
         5wVNg1WVRhpGkZA+xmNQ/0W4kfkRA/KeyhsLXexHt9U4QJd7/z5ulR61Qv2XiOS2cNEi
         nkxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="hLN1/1/M";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id t191si612305vkt.0.2020.03.22.17.48.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 17:48:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="hLN1/1/M";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584924490;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ctgwhg0Zy8hAy9old4I6xSejNXyyPKIVIE9Mrag5S+E=;
	b=hLN1/1/M0qSZvP4oP0lnLKb3JzIsqYlFlg2Ix7ysOjU9NLcOMXOq/b9mgCOgYT15l8s7Hm
	ZTpp+RYtMBMKV/BooOiQIkBu/glff5B5p6oA5pImj2JdvbQ7VvaYXIlTpVkwj7CU/jGioE
	Ogl73J/s80/xoaUgV7ANEsbDLmYWX64=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-379-SO6mvOr-PDq860EO3pMNyQ-1; Sun, 22 Mar 2020 20:48:07 -0400
X-MC-Unique: SO6mvOr-PDq860EO3pMNyQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5BA97800D48;
	Mon, 23 Mar 2020 00:48:05 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EEB7960BF1;
	Mon, 23 Mar 2020 00:48:01 +0000 (UTC)
Date: Mon, 23 Mar 2020 01:47:55 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Tim Collier <osdevtc@gmail.com>,
 Nikola Jelic <nikola.jelic83@gmail.com>, Moritz Muehlenhoff
 <jmm@debian.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Julia
 Lawall <julia.lawall@inria.fr>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: wlan-ng: Fix third
 argument going over 80 characters
Message-ID: <20200323014755.2b4944c0@elisabeth>
In-Reply-To: <20200321225808.2494564-1-jbwyatt4@gmail.com>
References: <20200321225808.2494564-1-jbwyatt4@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 21 Mar 2020 15:58:08 -0700
"John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:

> Create a new 'status' variable to store the value of a long argument
> that goes over 80 characters. The status variable is also used for
> an if check. Replacing that long statement in both places makes the
> code much easier to read.
> 
> Note: the status variable is assigned after a needed byte order
> conversion for usbin->rxfrm.desc.status, which uses a reference.

This looks rather verbose to me, but it's factually correct after all.

> Issue reported by checkpatch.
> 
> Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


