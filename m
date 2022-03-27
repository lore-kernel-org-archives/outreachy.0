Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512D817C0
	for <outreachy@lists.linux.dev>; Sun, 27 Mar 2022 08:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648371284;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=O7A+FE/5DI1qDH6F7pL3kdBFp41xnIXfxodFYMPoFYk=;
	b=YWyHkC+koUdq/EdEooM34ljB75e89ICg4kseo2MpEyfKnMBb3cNeTT7/DhWhaEnLEX97p6
	YN7IMWlhieIkjyKecvpToLwHjbqAViremKTX3yu7A6KpDXCan7295EyzYkqQACkxvEw/uX
	bh/kcngOLTvMqxm0i75djI3lOoZ8ZGo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-107-r_S0c8-SNYikdFEXj_LH8w-1; Sun, 27 Mar 2022 04:54:42 -0400
X-MC-Unique: r_S0c8-SNYikdFEXj_LH8w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 169551800D40;
	Sun, 27 Mar 2022 08:54:41 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BD2F510013C1;
	Sun, 27 Mar 2022 08:54:40 +0000 (UTC)
Date: Sun, 27 Mar 2022 10:54:38 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Rebecca Mckeever <rebecca.mckeever@protonmail.com>
Cc: "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Subject: Re: Help with Outreachy Setup
Message-ID: <20220327105438.26ec0e70@elisabeth>
In-Reply-To: <hIoORnc6IGx_3SqRrbAJGrJBMH4ZnHvpDMUrXAkvsbULD_5Ab9D-w_2na1gq1TlO7bX0JdMAx_CBriDDpoqStYKNXmqu4HZUugAX1HJ0ius=@protonmail.com>
References: <VlGZ-Rt6GMrT_vsR1Bi_X3co5-hOiETSXBNNVG77hbb2vELgPzsd2fv5T4Qnd14G3z6f-ocpRTj2uT2ampl1aB6PyXJkWRS_5l8BH3nNcRM=@protonmail.com>
	<hIoORnc6IGx_3SqRrbAJGrJBMH4ZnHvpDMUrXAkvsbULD_5Ab9D-w_2na1gq1TlO7bX0JdMAx_CBriDDpoqStYKNXmqu4HZUugAX1HJ0ius=@protonmail.com>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Rebecca,

First off, welcome to Outreachy and I'm glad you were able to build the
kernel and boot it! About the issues you hit.

On Sun, 27 Mar 2022 04:58:01 +0000
Rebecca Mckeever <rebecca.mckeever@protonmail.com> wrote:

> I was able to get it working on a different computer. It still shows
> the "CONFIG_X86_X32 enabled but no binutils support" message, but
> there was no error message and I was able to boot into it, so
> hopefully it's not a problem.

CONFIG_X86_X32 enables, I quote from the Kconfig help: "x32 native
32-bit ABI for 64-bit processors" -- which is a memory-saving feature
not commonly enabled.

On 64-bit processors (such as, probably, yours), pointers (that is,
references to data, or functions) use 64 bits. That's convenient, among
other reasons, because 4 GiB of memory nowadays isn't that much and,
using fewer bits, some (further) translation of memory addresses is
needed to address what programs and kernel might want to refer to.

It takes a bit more space, in both programs and kernel. So the kernel
offers, as a rather extreme measure of memory optimisation, the
possibility to keep the storage of pointers to 32 bits. That would be
used mostly by embedded systems, I guess.

To build the kernel with that option, you don't just need binutils, you
would also need binutils with this specific support, which is not
commonly available in distribution. I bet "elf32-86-64" is missing in
the list of supported "targets" when you issue:
	objcopy --help

Anyway, yes, it's just a warning. You can get rid of the warning by
disabling the CONFIG_X86_X32 in your kernel configuration. Maybe you
could make sure you disabled it with the correct syntax with this, from
your kernel tree:
	scripts/config -d CONFIG_X86_X32

...it can still be that it's selected by another option, so it would be
re-enabled automatically. Search for it from 'make menuconfig', typing
'/' (slash) and searching for X86_X32. Then you will see if that's the
case.

The actual build error you got on the other machine is probably a
dependency issue between options, which happens with your particular
configuration, but it really shouldn't happen no matter how your
configuration looks like.

The relevant configuration options are CONFIG_CRYPTO_AES_NI_INTEL and
CONFIG_64BIT -- you could start having a look at the state of those two.

I hope this helps,

-- 
Stefano

