X-GM-THRID: 6805867897863274496
X-Received: by 2002:a6b:3944:: with SMTP id g65mr9257102ioa.78.1585553721138;
        Mon, 30 Mar 2020 00:35:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:194:: with SMTP id 142ls5027203ilb.4.gmail; Mon, 30 Mar
 2020 00:35:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtY6VdE+PkuGLpgrIJ1dxxX16mrv8Q06QwzOsTcd3p5JX0dF/uZiUFIMNf1YvS6vYSWTBzH
X-Received: by 2002:a92:b74d:: with SMTP id c13mr10251733ilm.105.1585553719723;
        Mon, 30 Mar 2020 00:35:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585553719; cv=none;
        d=google.com; s=arc-20160816;
        b=BiAaiqff/5LM2uqIkO2rULClMKqeG2TLyw2VYhtl21cop9jsvm2821iz6MgOYKEZUB
         RzP7br59C8HGTu2RoHYOT4qfnNmSl+/hDFTYNNPzIjFGQxfC4XW7+7Ue61qM25DBLjgp
         LsW+eAOGaTL6tQ9vtmgdOU9ep1DBJifVY2pfWF7Rq2ofrJ8Rgcc0wmYR9Kl0IaeWtWjQ
         UBCnof2D8Ykbyb/hdDplaZ/lzav3H5ELkDOkTf6KUjnMZVRrSnBQyO9ZbeEqo+V0CGTA
         qO4TuIaOzxcDYWvJTva1JDQBlYqdPqo8LQP9JuWdAby8SNomlJ0OmEdnXQnAgwXFg1wC
         ByiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=N/XqwabKl1wKb0mjh2zs5gFMYl4f8WDXgXXm22CKyC0=;
        b=b18YBi7haYG6CZcWhHrKS7BlZBj16JHkUHBcWUUc5xHYlOyyMIDL0dZjOD3Ppr+ZIu
         nPGUCvuXaIDugR5oziXHLjFBMQQadF4dnjQNNgNb4/2NwY1PNTZM1s1tpMOMtwwPle3V
         qtcZ/gU/C+jvDLD2AWbPKwMiQ4UI32N7W9pLV1/P+Z8cjvI0vvNkHb+0+ddpnrhbeao3
         5QlYep+sttQQQuuYcXAk768oPgJXPrn1DiPNngF2gU+gpvMw8ftvlBfEeUSgWXM9sBB2
         QFb+D2yF3vdsyZ0jkrYdPAJHHLKXOBfVnThXKDy7krN35xbxhAQ13ncZOwNRXUgG3RCk
         xMsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=OwD53xUD;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id d207si1240377iof.3.2020.03.30.00.35.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 00:35:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=OwD53xUD;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585553719;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=N/XqwabKl1wKb0mjh2zs5gFMYl4f8WDXgXXm22CKyC0=;
	b=OwD53xUDGRwC7SPLvjZ4vTze8e49pVvxB/papbyc2x3ypOwf9bBchxsNczm42vrX3zXvcN
	Ua9QXUGT0KO/VT125JuW1IGei3dXDywZvhi64z6cSOSv3AfW6p/85ipnkhwroim7B/h3Qh
	B4MPEehkP3grXJiVlHq3R/OFetjTw7w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-430-kKlmIMwnNXugtEvaF6uA7g-1; Mon, 30 Mar 2020 03:35:15 -0400
X-MC-Unique: kKlmIMwnNXugtEvaF6uA7g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C6EB149C1;
	Mon, 30 Mar 2020 07:35:14 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA2325DA66;
	Mon, 30 Mar 2020 07:35:12 +0000 (UTC)
Date: Mon, 30 Mar 2020 09:35:06 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: R Veera Kumar <vkor@vkten.in>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, outreachy-kernel
 <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: core: Correct
 typos in comments
Message-ID: <20200330093506.6f5dab06@elisabeth>
In-Reply-To: <20200326123540.12401-1-vkor@vkten.in>
References: <20200326123540.12401-1-vkor@vkten.in>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 26 Mar 2020 18:05:40 +0530
R Veera Kumar <vkor@vkten.in> wrote:

> Correct typos in comments.
> Misspellings found using checkpatch.pl.

This change and the following two on rtl8723bs look good to me, but I
think you should re-submit them as a series, as they are very clearly
related (you also prepared and posted them one after the other...).

-- 
Stefano


