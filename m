X-GM-THRID: 6808259246011973632
X-Received: by 2002:a9d:19ca:: with SMTP id k68mr8281287otk.232.1585550884982;
        Sun, 29 Mar 2020 23:48:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3b23:: with SMTP id z32ls6306576otb.1.gmail; Sun, 29 Mar
 2020 23:48:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtLZj4aOft8wD/ya5QZmpwgMyISIE2cwm+9tOyWvRHxkva6H4cYq6dF70j8zq/kUP9WsmnR
X-Received: by 2002:a9d:d0f:: with SMTP id 15mr8377785oti.161.1585550883899;
        Sun, 29 Mar 2020 23:48:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585550883; cv=none;
        d=google.com; s=arc-20160816;
        b=yO3eQgmewo14NxbiLtcEuJ+fYgsxjFJJZFUkfLH+OOMo2QkPgBdWeno66SKfXf0qFu
         6QW+MZu0YqF7Vsi5qUu2Y5LUwdfDrFVT4+nSL0rubn2gtsZYv6l4Z8vJ1VvX07fLkBax
         KWv1QixwiKmDPMwa8UUa7EBVQPPjMtYfLRS45MiLJXAIdammi5HbfV41hOR+kzqW3LWn
         hJfWW9MduO9RCVl1GxCfOE+MGHL3jpp/gu7+d7TXz2eE2O8nO9AkQK6YMiRcOmV9JU0i
         yHuoYgiqyJ0OQSi9HmcDhR3EqaL1IbJ3GZwIyG++ONP0PmgB2bM1jeFYj76ziyyJW3Oc
         SQpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=nyfUsO/T0E/7xzoexsaycHqsJ0KjG21nQpinw4BcqNI=;
        b=fCq7PYQLmmEoOdFCojbtJ218LX4OD1Mhg8z+TfbwsjZpoFM6kPZ8ca8GCOFybqHnLo
         Yu9B4JXWlzzWvtE9AhsnfZNkVICQkf8+fDsfupVQZ6Mj62J/tUXELA7uCM/Uji9PmN0X
         N3+s+2zelfwpPK1rHvYlFT+7RZaGMK3E4WFKxbHXqo+le2ULE28Bp8Nn1eYr7i/rWlLX
         8/FbEHcbIQ9ET4aknrjxPIIiANKWMk9PSC6WyWkDRyugDPYvCdVoeHYxJFZlrk04/Ysw
         oqi0dCvKyatdcr64v+o8NzZ5b9XiCVFOH0VQdi+mKGS2pP+RSunR1qxTagYDCcYNGafg
         oX/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="EpfD/yRi";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id n5si1012488otf.3.2020.03.29.23.48.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 23:48:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="EpfD/yRi";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585550883;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nyfUsO/T0E/7xzoexsaycHqsJ0KjG21nQpinw4BcqNI=;
	b=EpfD/yRiQVa2SDfw4WV4V3UBX5gTrNxIlmyJgW360A/BBLkw3tMHbeIwWc1bA5/6iwIcgV
	N6rsgEGDLmRMjWp1H7yYL49+5r6vpTddaFIjnikoMaAkEE4PFpcHyDMOVzsa3f4h6gGfqR
	GDm6Lg9/3E3b0tstZYMPlBJaCmDoay8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-54-oot0cUrMMpKseoO5axt2Pg-1; Mon, 30 Mar 2020 02:48:01 -0400
X-MC-Unique: oot0cUrMMpKseoO5axt2Pg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 05523102CE14;
	Mon, 30 Mar 2020 06:48:00 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EAC7B5E009;
	Mon, 30 Mar 2020 06:47:57 +0000 (UTC)
Date: Mon, 30 Mar 2020 08:47:52 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Simran Singhal <singhalsimran0@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: rtw_cmd:
 Compress lines for immediate return
Message-ID: <20200330084752.7a0557ca@elisabeth>
In-Reply-To: <20200325212253.GA8175@simran-Inspiron-5558>
References: <20200325212253.GA8175@simran-Inspiron-5558>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15

On Thu, 26 Mar 2020 02:52:53 +0530
Simran Singhal <singhalsimran0@gmail.com> wrote:

> Compress two lines into a single line if immediate return statement is found.
> It also removes variable cmd_obj as it is no longer needed.
> 
> It is done using script Coccinelle.

This should be consistent. What does "it" refer to, now? If you start
with an imperative mode, switching to indicative makes it hard to
follow.

By the way, Coccinelle is not exactly a script. Saying something is
detected by Coccinelle is enough, you don't need to qualify that
further.

-- 
Stefano


