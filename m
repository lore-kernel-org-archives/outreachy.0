X-GM-THRID: 6810236750031486976
X-Received: by 2002:a25:c102:: with SMTP id r2mr22484235ybf.43.1585681818613;
        Tue, 31 Mar 2020 12:10:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:2ace:: with SMTP id q197ls7613880ybq.1.gmail; Tue, 31
 Mar 2020 12:10:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvtjAYqh7d8lGMCfbrb0LUMFMOJxEINtdbChdu3yH93Su+XkOQv4zuqggpqWzDi9GXqyogH
X-Received: by 2002:a25:dcd4:: with SMTP id y203mr32580710ybe.483.1585681817104;
        Tue, 31 Mar 2020 12:10:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585681817; cv=none;
        d=google.com; s=arc-20160816;
        b=kBBuSyv9X4hY8TFDy6dB56a+Q8l8X8da235is169O3hTONcVvgCHutCLAIl7s6nvcu
         kwZ9cLP5CFhomwzFVE9rcqBcBZKCsRmRrfIifZiZaJZ7DjeRxQoQLo6oVBvbiSNUWldN
         YSwDOPHIlXW/RIuKCKfG/c5kn3DqhTuyz0FNgJiJ0WUFFHrI9Ee9a2hVbJdG+5c5AkZH
         5/JiyvXPmQmi3F8ytCOi+2X3bJq2kFjYDUmUHRB+DnPyT5u2hiLGQBVfowuUXg1IilSP
         5Fx1087rl5cifSCn5THa+umzqlUpEMbJ9nqD4ZRS5M8RmSevn75ohXK5bz+mODcfRGEZ
         UJBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZssxaT8NNuQV7gWisoBOkyeD7jrEm1WAJ4eRr5riFyA=;
        b=RYfQanHSPeTEctTb2LNZEJcOOiLk4E/9iKStHOJN09jE9wAPtFuDPvPJwOIFwNqHqU
         KqQbETSXc/Q6K7Oiv+DgJt0TNHh0RSqazVzFyuFLfuxeX7hCeulzCxejM1AVlk9dF6GW
         YabUOCQEupjK888EJAbWoOxa1x7JZ7LZMmsxqblpaUDcMfhfUiuWleUO6AkNlWtlhYGE
         ReE4YPEjlSGQrUWrj/sJq3n2I3l20kOk21KIviQs1HbnSG9TKOqFC2wu9mo+joCc1E/O
         OnoSklfxYEI78leaJB+80gMsLz1NpA4wLkPKjhXEb08NX3ve+GKT2AAioNXbweQRve8E
         DrWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Us6QsFae;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id l1si51721ybt.2.2020.03.31.12.10.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 12:10:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Us6QsFae;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585681816;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZssxaT8NNuQV7gWisoBOkyeD7jrEm1WAJ4eRr5riFyA=;
	b=Us6QsFaeOmkhlyIUUpdJ9PiJGCGF71eu6bvQDulFR+mzBOWbp8pDT0u/WnP6ZfgRoBaCRN
	0Uz4UskmNzEVGoaCVQjjjUnSBH7PmVGVmyAIDtbY+fMcskrbLv50mqFnTRbIVmNXctfzBI
	2rBFTfoVexrLmMUMEOOMXAlsV+NYLvs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-438-eZHm9hhANEar_Dyf9kjsNQ-1; Tue, 31 Mar 2020 15:10:13 -0400
X-MC-Unique: eZHm9hhANEar_Dyf9kjsNQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BC35E800D53;
	Tue, 31 Mar 2020 19:10:00 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.36.110.7])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8A34D96B8B;
	Tue, 31 Mar 2020 19:10:00 +0000 (UTC)
Received: from elisabeth (055-041-157-037.ip-addr.inexio.net [37.157.41.55])
	by maya.cloud.tilaa.com (Postfix) with ESMTPSA id C2EDC40079;
	Tue, 31 Mar 2020 21:09:56 +0200 (CEST)
Date: Tue, 31 Mar 2020 21:09:46 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: julia.lawall@inria.fr, gregkh@linuxfoundation.org,
 forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Patch v2 0/3] staging: vt6655: Remove
 functions that are never
Message-ID: <20200331210823.50dbe9be@elisabeth>
In-Reply-To: <cover.1585630805.git.briana.oursler@gmail.com>
References: <cover.1585630805.git.briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

> Subject: [Outreachy kernel] [Patch v2 0/3] staging: vt6655: Remove functions that are never

never...? :)

On Mon, 30 Mar 2020 22:16:37 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> This patchset removes functions that are not called in the driver but
> are prototyped in card.h. Each commit limits its scope to one function
> definition and related documentation in code. References in the
> developer's initial changelog were left in place.

What do you mean by this? Which references?

-- 
Stefano


