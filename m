Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87A3E7E
	for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 10:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665399276;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Sg5quTI+XLe6NMz5zXmPXpxMHK2CNGI+8AGMmTy6V4A=;
	b=JEkzdCEyU32j6zSewrbwBg8cMsNZAq3om2UXfHvlt9wIuYLuTdjnRfkaSfgKCiPS4jjkl6
	eGTImcvIpx1eTm76GemSko7zfF6fvPcvDdD/gr0DbbBOYCr7cuJxuXkp9AxeCx/rg83xSW
	xOfxZcPtYimlZadI21oxxSbQSqEIOXk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-639-m1eirqjuPEebfkLVgONwKQ-1; Mon, 10 Oct 2022 06:54:33 -0400
X-MC-Unique: m1eirqjuPEebfkLVgONwKQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C0E8829AA39C;
	Mon, 10 Oct 2022 10:54:32 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.3])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2177A215CDC3;
	Mon, 10 Oct 2022 10:54:32 +0000 (UTC)
Date: Mon, 10 Oct 2022 12:54:27 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <drv@mailo.com>
Cc: outreachy@lists.linux.dev, Julia Lawall <julia.lawall@inria.fr>, Sevinj
 Aghayeva <sevinj.aghayeva@gmail.com>, Roopa Prabhu <roopa@nvidia.com>
Subject: Re: trouble booting into staging kernel
Message-ID: <20221010125427.52d5a103@elisabeth>
In-Reply-To: <Y0MKHfWsqsh4S9ld@lion>
References: <Y0MKHfWsqsh4S9ld@lion>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Deepak,

On Sun, 9 Oct 2022 23:21:25 +0530
Deepak R Varma <drv@mailo.com> wrote:

> Hello,
> I am natively running 5.15.0-48-generic on my HP Laptop with Secure boot on. I
> tried to follow the Kernel First patch tutorial steps and managed to build
> Kernel release 6.0.0rc4.

Somewhat unrelated: in a past Outreachy round, we did a bit of work on
a tool with the idea of making these steps easier. It's not mentioned
in the tutorial, as we didn't have time to polish it up completely, but
maybe you want to give it a try. Basic usage demo and source at:

  https://mbuto.sh

I'm not mentoring for this round, so I'm just throwing this around
without claiming any responsibility. :)

About the specific issue you're hitting, I don't have any pointer other
than what Julia already shared.

> There were issues during the module building associated
> with the certificates / signing of the modules. I got those supressed by
> emptying the following two config parameters as copied over from the native
> config file:
> 
> CONFIG_SYSTEM_TRUSTED_KEYS="debian/canonical-certs.pem"
> CONFIG_SYSTEM_REVOCATION_KEYS="debian/canonical-revoked-certs.pem"
> 
> set to new value
> 
> CONFIG_SYSTEM_TRUSTED_KEYS=""
> CONFIG_SYSTEM_REVOCATION_KEYS=""
> 
> The build was successful, however, I am unable to boot into my new kernel and
> have received following errors:
> 
> error: bad shim signature
> Loading initial ramdisk
> error: you need to load the kernel first
> 
> I tried to seek from net, but did not find any workable resolution. Can you
> please suggested how can I correct this error or if I missed any steps?
> 
> Thank you,
> Deepak.

-- 
Stefano

