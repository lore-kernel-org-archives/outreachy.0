X-GM-THRID: 6806841558557523968
X-Received: by 2002:a1f:8ccf:: with SMTP id o198mr13076304vkd.53.1584924688482;
        Sun, 22 Mar 2020 17:51:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:a989:: with SMTP id s131ls649155vke.4.gmail; Sun, 22 Mar
 2020 17:51:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsntlwADrUl1HKfiMnZ3vI53TJnFZEf1jwVDLmJhA/9EV2l/CozAFo2ezXS/PX2IzMPitDk
X-Received: by 2002:a1f:900d:: with SMTP id s13mr12906381vkd.81.1584924685818;
        Sun, 22 Mar 2020 17:51:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584924685; cv=none;
        d=google.com; s=arc-20160816;
        b=nN8NNkgEx0TVhCiyPScB4hShwEzW93Tx/Sf4AdZUej4UnX6OuOzCiJuBJfefrdiBr2
         L0GlUjfEsSjp5xj71wJeC50hr29fLZuD/OeZux+toeVSyMj7ev0j7haaK6cHbBA8XKJE
         tpMNcHuXjdtbkiSUO/HrSP3phgbr/x3sBquXda1EWteGHSu8GJRng+k4EijYQKRBCe6W
         ZrtCgSMmoYqvsqX3fxcpw/wFRVpmsviIhI212TG+EJ65Duye5EGjFxTD7l/ft/GpSpIM
         PIDG9L2BXovUYmJtD3gRFEBLHF4Bv66tnyrpslVU443nN16IjLSt0WV34o1clQT5NX7C
         YdHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=skyAx3yZiFsMd527IxmZ1ZELaUGI4XyloRYrF0aWA8g=;
        b=aIOnjDmT5YRHC6ipmKwYJUScvCWZcdZe7+holEK8mfdEKdPgZd35hMdm+G7B+2ZVdh
         mxiiq6+FH9vevB7dx401+fTlQeB64XepRJC7+xdvfiPj2dYnCT4FOMq37vMded1Oy+dm
         3yb//1Ex1cJ3ANQhHGzkJl+of17dSAvg9qMBfuAsNXJ4Qm7EReDUChe9xkNIb+AOyVJM
         BsDApFIW5pOGkWQ7kqFe4705r/kYavCxkHRtijBmn/JzxvMj84As+MZm+ygx+sgAKyxs
         xoX1RNpRicDW/TeOochgC1lXQ84uVVnE3huoWAZbQhEXydfmR69i5vDjMKv7s6kYUWBZ
         0NZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HDJJ3pqK;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id k6si85288vso.1.2020.03.22.17.51.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 17:51:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HDJJ3pqK;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584924685;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=skyAx3yZiFsMd527IxmZ1ZELaUGI4XyloRYrF0aWA8g=;
	b=HDJJ3pqKv7oXuRagVHk7bqHvLJF7pVTkDMVfnSOLMc0vCnSyEjVOHjtpALMrgpAvNpJlER
	+u+4/FhhY9cbk94o/E9U24p9jM7rL9afwrsQpMU1dhe0t9hOWN9Z29bxS1Vh9Zh4/3CTg+
	5M14V3VKIfbLA8IMm9glWrwdism+HRY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-380--k1Rg5ZiMvSEb0XtUrG9jg-1; Sun, 22 Mar 2020 20:51:23 -0400
X-MC-Unique: -k1Rg5ZiMvSEb0XtUrG9jg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 71D74100550D;
	Mon, 23 Mar 2020 00:51:22 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E7DA310013A1;
	Mon, 23 Mar 2020 00:51:19 +0000 (UTC)
Date: Mon, 23 Mar 2020 01:51:12 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: hp100: line over 80
 characters
Message-ID: <20200323015112.50b56447@elisabeth>
In-Reply-To: <20200322220836.GA8560@siyah2>
References: <20200322220836.GA8560@siyah2>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

G=C3=B6k=C3=A7e,

On Mon, 23 Mar 2020 01:08:36 +0300
Gokce Kuler <gokcekuler@gmail.com> wrote:

> Moved to the bottom line after && operator for it exceeds 80 characters.
>=20
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---

As you're sending a subsequent version of the same patch, you should
indicate a revision log here, after the '---'. Please have a look at
recent patches sent on this list, there are plenty of examples.

--=20
Stefano


