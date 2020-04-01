X-GM-THRID: 6809913191851622400
X-Received: by 2002:a63:c149:: with SMTP id p9mr3664721pgi.389.1585709290989;
        Tue, 31 Mar 2020 19:48:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:6455:: with SMTP id s21ls14716305pgv.9.gmail; Tue, 31
 Mar 2020 19:48:09 -0700 (PDT)
X-Google-Smtp-Source: APiQypJOFNQoIyMjsmtQiZKWyhUAcVgODh7hj8e043cX6sMBqpAb/UTslC15Em+xJSHB+j3X5GZw
X-Received: by 2002:a62:1c08:: with SMTP id c8mr7982247pfc.80.1585709289577;
        Tue, 31 Mar 2020 19:48:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585709289; cv=none;
        d=google.com; s=arc-20160816;
        b=jGp2hCjr9GOEljSWbsZvWzKooB/F0LZdAtvrOWVEV4+nLaZRJ+lmGlQLcaZdpdB0gG
         3zWo07IftkAaWhFzyn6Wnb1RhIHdDI0jMlNvSZ+aT8tBJ5KfjxpXzfA9t97bpzZAINbL
         YK+VZEGNUAh2HSyb1HLJH0O8PjtSy/xacdklpzZE23qXbFz6nt8s/EYPuyOm7wCtCFLl
         2wUiv1FnSvLh/SpmbSJQ2DKVlC+ixFCSMDb+Q3miFONx4AfWSlFOzawD6C2OUp1d692Q
         vaEM4mTvP12+kEuetcszJLwSvsYgI/8jqE4Rg5v51ACjGqVBPvviMKw2NRMwRrREP18n
         pJSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=RPamC+cFyMo0Bf4X0SaJMC532Wt4ZubsnAcybzS5v40=;
        b=yMuNEneOFQomv3FsOsvl0SjmZb9x12+5aKZKfbCaQAwO+gpSIxfC5dZI6Z3SIsIxlP
         Q9zXeLYiAgMzZmNCoAykMZMjdSF2VrHGcOSP78xpVQI8vFOT2OmnwiE3QEnYT0Yh5jFE
         rxydtf+wBfSw66tWuHuIs782q1ATQhbri2eqrvrvTc+aKLmNyc1NZZrkh5ccSotlFJ3S
         NjCeH62KJlUymVObSPoRJ4lwYGOHAKLtoOymvwHV2p610os6EAQkID6Vp56a1Gio26F5
         aR0tEsVPcSODcAT+dflQXyHeLkBv+LwUywf/ZwbytYx8ioOQwMLyraaDTNF4xoDKHthr
         P5cQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Yb1CCGV4;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id 62si47854pgf.0.2020.03.31.19.48.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 19:48:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Yb1CCGV4;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585709288;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RPamC+cFyMo0Bf4X0SaJMC532Wt4ZubsnAcybzS5v40=;
	b=Yb1CCGV4L7mo/7wesZCKmfmt76XFWlowGoaLD7Wjq9tF3gM+L/p+ExwVWa3fUPHLVZTmOl
	JCAV7GHTWk+3sIKzJzBETK8Ix170Y3H3rll7z/1AKxaFO5tgxloEa5/1tsdR0nTI5ghHWn
	QIOdJh7/JuUPjLK/CSumaZpKbMFYptM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-377-h65ljsH2NHyqmTwn11j0WQ-1; Tue, 31 Mar 2020 22:48:04 -0400
X-MC-Unique: h65ljsH2NHyqmTwn11j0WQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EA3DE19067E1;
	Wed,  1 Apr 2020 02:48:02 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.13])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 46D085E002;
	Wed,  1 Apr 2020 02:48:00 +0000 (UTC)
Date: Wed, 1 Apr 2020 04:47:54 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
 Larry.Finger@lwfinger.net
Subject: Re: [Outreachy kernel] [Outreachy] [PATCH v2 0/3] staging:
 rtl8188eu: Resolve various warnings reported by checkpatch.pl
Message-ID: <20200401044754.3a12aeed@elisabeth>
In-Reply-To: <20200331183201.18386-1-debsoumyajit100@gmail.com>
References: <20200331183201.18386-1-debsoumyajit100@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed,  1 Apr 2020 00:01:58 +0530
Soumyajit Deb <debsoumyajit100@gmail.com> wrote:

> Changes in v2:	
>   -PATCH 1/3: No change
>   -PATCH 2/3: Add curly brackets in conditional statements to improve
> 	      code readability and properly align the lines of a
> 	      function call as suggested by Stefano Brivio.
>   -PATCH 3/3: Remove extra unnecessary parentheses to improve code
> 	      readability as suggested by Stefano Brivio
> 	      <sbrivio@redhat.com>

On Mon, 30 Mar 2020 20:17:01 +0200
Stefano Brivio <sbrivio@redhat.com> wrote:

> This looks correct, but still it's horrible, all those excess
> parentheses make it quite hard to read. If you plan to remove them,
> perhaps it's easier to have a change doing that first, in the same
> series, so that this change can be checked more easily.

I really meant: remove them first. See also:

On Tue, 31 Mar 2020 16:49:47 +0200
Stefano Brivio <sbrivio@redhat.com> wrote:

> - the new patchset (v2) will have:
> 	- patch 1/3 v2 (no changes)
> 	- patch 2/3 v2 (for example, if you remove () here)
> 	- patch 3/3 v2 (this current patch with the changes I suggested)

This way, I could review 3/3 much quicker. Note that your patches are
also (almost) correct as they are, so this is not really a requirement
-- it would just help my eyes a bit.

-- 
Stefano


