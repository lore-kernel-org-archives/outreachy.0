X-GM-THRID: 6810515093003960320
X-Received: by 2002:ab0:1869:: with SMTP id j41mr260618uag.99.1585775455963;
        Wed, 01 Apr 2020 14:10:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:2096:: with SMTP id g144ls66190vkg.7.gmail; Wed, 01 Apr
 2020 14:10:54 -0700 (PDT)
X-Google-Smtp-Source: APiQypLVmOL9VEcYSTlsXCQcvMAgZ4+5CM/W1hhYcOlqWZNnlQyEJqGOjRJ0A/xTFCYHA0HlkOZW
X-Received: by 2002:a1f:9ec1:: with SMTP id h184mr16269461vke.70.1585775454729;
        Wed, 01 Apr 2020 14:10:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585775454; cv=none;
        d=google.com; s=arc-20160816;
        b=WMTpid3Y6GiHFRT4xezPD2GZW4IWAQ8b65IOv02RlHt70dfV0IOU7sqYFscx5+XYRw
         +KlK+PrCLblv9So4MxPORZ36Evtq/YMz6gutTjwLrCHoLLI50folAOj8/lT/dmHEe81U
         u06+FA96ofUI7RazqUxaI5U7OwCkpQS6z7zfulLnDoG88Exvb95PMJ9Z9HafjVToSqOX
         ZxBPa8ImBTvbyE31A0uUhlseBs4eHrMXBjLEvRZYi5Ve8ju62thB123VJ4Lyu//sBmu5
         OMgNq37tQ8a8PITeYYRLhT1CsGM2O67vTnzMo1Dyl/kTvCqxKl3C7YSFI3phdocGsiyX
         wZgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=tLgDBo/WF4kXMl3cLexsun0Rt7vinR98xjhsTzJW84Q=;
        b=s6MpHzNqf6OZDAkknerquE5+vCbKOjV0HOEvIb3MCrmYeJt0+AtDniNcCOr16T3AR0
         XBkFUz+2qOPCCAvbrMxkAaZS9j/9Is1zAA+JKz3kXl+5kZr0Kl82hN54df1nl1fE+4z1
         Q/ITZBaOq+BnUsaaaKfbuxvj34JQMlIF4i6XWSIoGY0wofNtYR6xAB8qL0h0Ws1CZU2I
         u9uns6w2qDMQAs1oXgMNXTjG7iSHZyEU4j5748kRXaMv75SK9ISd5npU6IB5s7gvqnVd
         TV59EsrRnpi5rdrkzlp2ij147aNrQ/js62b4a3/qd1gkHqcNsezr310kmeAIJfUWGPZW
         5GQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=T5mXGdPS;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id 203si241204vkx.3.2020.04.01.14.10.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2020 14:10:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=T5mXGdPS;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585775453;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tLgDBo/WF4kXMl3cLexsun0Rt7vinR98xjhsTzJW84Q=;
	b=T5mXGdPS6FVS9vFXDGtqBwUoUR94cFuKeZz1r2CkfzLNQoHg6bWMuGUQSEMM/JR2kGJJw7
	t13ARg3tcQatdnkTrsExA8xGiSpzplBR5FoHWxe+9H5xsX0+ErvBFBJBiafADVR/xOCQHl
	0EbTs1AYqcXjq8JTzesTA8+SwBZvQIE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-329-7C_S3ZqQN5SnxjI_pGCY5g-1; Wed, 01 Apr 2020 17:10:50 -0400
X-MC-Unique: 7C_S3ZqQN5SnxjI_pGCY5g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4C447801E7B;
	Wed,  1 Apr 2020 21:10:48 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.13])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 85BFB118F20;
	Wed,  1 Apr 2020 21:10:45 +0000 (UTC)
Date: Wed, 1 Apr 2020 23:10:37 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: julia.lawall@inria.fr, gregkh@linuxfoundation.org,
 forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Patch v3 0/4] Staging: vt6655: Simplify
 statement logic.
Message-ID: <20200401231037.005251a8@elisabeth>
In-Reply-To: <cover.1585763457.git.briana.oursler@gmail.com>
References: <cover.1585763457.git.briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed,  1 Apr 2020 11:03:38 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> Reduce code duplication and complexity within switch case statement. The
> goal is to improve the readability of the statement so that the outcome
> of the statement is more clear. Checkpatch identified long lines and
> other formatting issues within some nested logic. The last commit in this
> patch series addresses checkpatch warnings that were not fixed by other
> means within the series. Some long lines were left under the rationale
> that removing them rendered the output more confusing.
> 
> Briana Oursler (4):
>   Staging: vt6655: Limit return statements.
>   Staging: vt6655: Move rate determination logic.
>   Staging: vt6655: Eliminate nested if else
>   Staging: vt6655: Format long lines.
> 
> Changes in v3:
> 	- Patch 1/4 - 3/4:
> 		- Substance unchanged, add Reviewed-by tag from Stefano
> 		  Brivio.
> 	- Patch 4/4:
> 		- Add curly brackets per recommendation of Stefano
> 		  Brivio.

For the series,

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


