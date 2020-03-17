X-GM-THRID: 6803932242595807232
X-Received: by 2002:a9d:6946:: with SMTP id p6mr3014855oto.224.1584439256692;
        Tue, 17 Mar 2020 03:00:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6a5a:: with SMTP id h26ls7275256otn.1.gmail; Tue, 17 Mar
 2020 03:00:55 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvbKu9+8P7YMw1MmPoqkxlyGqLELQzsW647G2SVI3lmh0CsAEQvtNd45RaCJMXGBVRFXaHd
X-Received: by 2002:a05:6830:239b:: with SMTP id l27mr3149586ots.278.1584439255165;
        Tue, 17 Mar 2020 03:00:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584439255; cv=none;
        d=google.com; s=arc-20160816;
        b=tYW/Fbdqo3hW0WyKNu6Nh+6bYXLfL1rgtcyL453duX4fR9W26lYVytyr2+fUOVuGKH
         7xOio8fw+qs9lHPfNAEViLTV0OXCnSPXwsju0Py3ZTRBwXZ3jYwMaCdKzPlZVuJRk7Gi
         /AinodFBqgkdESDZeK0wNb4p20x8lkWcGBF8WzOrabOtF0bo0ISfJbwBR5cH7zqIWq6a
         HErTiu1UyANGTaKttHjCat5TBtljpPIoKUtJWfhwC35jYWNi9pNxjCdf3COjoJY3Pme/
         0+TGrmIjgI4DuxJGwxDNqWgsXjMKacK3lVOTtFcSWrMsdIunktje8NJdCBCAxiSrJIo9
         PIag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=6meTxQN8V2mJJ14v3YesZOCMDKMC3FJJzm+KSHhixyE=;
        b=kOarrQ0TciO+/UD//gTeyjdHf5yZ4mrK/ZRfcJs7PQHVVFFVjwdGcrTYBLwc1EEfz0
         gKqLXmxpRjTTdy81jdoywTgTKqAbYzbDdv7EmYg1tT9w2MpPuY1z3XgJ1pAlblvtqP96
         qpB+6MdzNXerq8qMjUo3EcKagthjzM6WFR8j5B2Ll2YYsZBk1jz7i7KmqSOM6A0XKgmm
         Q9j+wE2oOLFmdnRGmDFa0l92MwR3ivRK1wGyxgQqa8J7/DReTWuKz85MuaoWL2llxP7n
         aJPW5i29HDfz+OfEOJBy+88L34mQMBCtVu12BF9d8RXGsmMZtXkZJKTLslO8lhVf+0oA
         Zu4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WnNca2Kk;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id b1si160155ots.2.2020.03.17.03.00.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 03:00:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WnNca2Kk;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584439254;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6meTxQN8V2mJJ14v3YesZOCMDKMC3FJJzm+KSHhixyE=;
	b=WnNca2Kkq2pS9Jac3kKu2O1CdJtm3fbcnwOQbYCKxI6lpfylDd+S0l5lqqG6J9GAclhdJ0
	yfqRmj7BC1uXujUY7AAWjQ47eqmvaDiFvmXLC2hEt3cA//tMCVRYNqG/IfR2DPhu9vvcXB
	uTv6qNVESdycaVXRwJ5DXJGNMNwuO0c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-239-0yO6h0M1ON6WYL9XOA_26g-1; Tue, 17 Mar 2020 06:00:52 -0400
X-MC-Unique: 0yO6h0M1ON6WYL9XOA_26g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7C88C801E5C;
	Tue, 17 Mar 2020 10:00:51 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D5345C1C3;
	Tue, 17 Mar 2020 10:00:49 +0000 (UTC)
Date: Tue, 17 Mar 2020 11:00:44 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: R Veera Kumar <vkor@vkten.in>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, David Kershner
 <david.kershner@unisys.com>, outreachy-kernel
 <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: unisys: Documentation: Fix
 for longline and typo in doc
Message-ID: <20200317110044.36940c33@elisabeth>
In-Reply-To: <20200314053136.GA2160@tulip.local>
References: <20200314053136.GA2160@tulip.local>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 14 Mar 2020 11:01:51 +0530
R Veera Kumar <vkor@vkten.in> wrote:

> Fix longline and a typo in documentation.
> Found using checkpatch.pl.
> 
> [...]
>
> @@ -56,7 +56,7 @@ NOT covered in this document:
>  2.1.1. Overview
>  ---------------
>  
> -The visorbus driver handles the virtual busses on which all of the virtual
> +The visorbus driver handles the virtual buses on which all of the virtual

This is not a typo, both spellings are correct and you are anyway
keeping a "busses" in the other section. We also
have drivers/i2c/busses/. If checkpatch is reporting this, I think it
should be fixed.

Please re-send.

-- 
Stefano


