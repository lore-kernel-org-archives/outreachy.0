X-GM-THRID: 6806789560169660416
X-Received: by 2002:a1f:728a:: with SMTP id n132mr5810540vkc.1.1585530326671;
        Sun, 29 Mar 2020 18:05:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:60b5:: with SMTP id f21ls1146074uam.6.gmail; Sun, 29 Mar
 2020 18:05:25 -0700 (PDT)
X-Google-Smtp-Source: APiQypLABzLKdMPFWn7vPT9lG6ZagonlDzquD4Yjti35HisNG7m6cggo30KZgOJp8kdKpJIFs8/N
X-Received: by 2002:a9f:21aa:: with SMTP id 39mr5885392uac.138.1585530325538;
        Sun, 29 Mar 2020 18:05:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585530325; cv=none;
        d=google.com; s=arc-20160816;
        b=D2VAZXz5iUvhkjXPbVRIBvkPeSSqeP4XgclkSbE98iv7Y1hbCTa2iPKnYGzhjywBfi
         oRCazpAY1HOiBaTwcl050thdtu9CLSLfGtkOdTAQwZu9ikYFAIfAtXXfz8syBzKvnkML
         QcEHN+dQ0OetVt1iNJR5nC/xdlPdOinKp03oJER7ahvuDCOAhLIqpolmxNGtwVWLLN9G
         p5E1eDUdZbKHbMUDREaaZCn5eox1v1/5ts9gRvYecVRB0m1+C90mhdRs56qmRnRLF56X
         /1+ky8ryjLF5V2cjHh595tUGOuVpqgG+8/EWfodCzwJnjtqbcoiMzHWtHRFfLL9jXmSx
         AsDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=mDJV5yf5sqTq7BBH6Thf8EcLPKuxR3i7R8Gj+S8lYwI=;
        b=f+3ZFk4Eyy1XTfaYrj0t9NWOkbCw1AcyCgw+H/WVPfPbLY8SDcUjASjwQj4ZVAwje2
         e9QE6tkuVWEOA7S2kB2YK7UrzD1O9sTPOGKgYfCiXChi4McAI56T6A15pesQTyYvXJWW
         kiy2ELF/vYDgXq1m7As2nuvgoRDqAMbqQHe/0CHN/2RLZq3IeR4ZTwLevz9YCfa9tybN
         SkVsIqzmGf7t7yaV1w3v3dFp4BixPEQonc1GcPQvX+FvnvzCsKD8Bxui3yqRzOf2Cd9L
         VT8ynhKWmUyh+plVBWUJWGt+SkdhviN9Ezm8KpyZGBVrY48rPiegqhRWcC3yVAKr0kXJ
         6qHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RFapGFgG;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id h6si991413vko.4.2020.03.29.18.05.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 18:05:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RFapGFgG;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585530324;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mDJV5yf5sqTq7BBH6Thf8EcLPKuxR3i7R8Gj+S8lYwI=;
	b=RFapGFgGdtXRqKuNEKrVxC43TY/bqyMxUxRVYWk0lN+se45aI5iz2swjf+UOcItRgW2hUX
	CAZcZ3AlYDqvaqO21eZCFMi0Pxk+tvhxbuHKVuIRaL1WnNHkIMETP99ATlkX3JwGypm/PF
	HC3JImakn/B1IKir7FzD0b1arCmWlVo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-355-0nIyAOliOYObPc1tDlI5xA-1; Sun, 29 Mar 2020 21:05:19 -0400
X-MC-Unique: 0nIyAOliOYObPc1tDlI5xA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B8181477;
	Mon, 30 Mar 2020 01:05:17 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2CA7597AF7;
	Mon, 30 Mar 2020 01:05:13 +0000 (UTC)
Date: Mon, 30 Mar 2020 03:05:09 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 daniel.baluta@gmail.com, nramas@linux.microsoft.com, hverkuil@xs4all.nl,
 Larry.Finger@lwfinger.net
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8188eu: hal: Add
 space around operators
Message-ID: <20200330030509.59cc78e7@elisabeth>
In-Reply-To: <20200325160142.3698-1-shreeya.patel23498@gmail.com>
References: <20200325160142.3698-1-shreeya.patel23498@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13

On Wed, 25 Mar 2020 21:31:42 +0530
Shreeya Patel <shreeya.patel23498@gmail.com> wrote:

> Add space around operators for improving the code
> readability.
> Reported by checkpatch.pl
> 
> git diff -w shows no difference.
> diff of the .o files before and after the changes shows no difference.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


