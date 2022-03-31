Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92897C
	for <outreachy@lists.linux.dev>; Thu, 31 Mar 2022 10:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648723053;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=E5z39jPPejWX5KgO5P8YJsmE2TeZKTFfKVS+JoPvQAs=;
	b=hpvburPbqHWMQ06hfv5hpLSTKE2aYF+LL6q+9Dk6D6jfYWv3KYI2cT89ICxYGkfNUybs75
	pOqAS3pOQVzpeZqTcEfqq2vSfj7jD/Gua4dP7hfuJWjnD7f9m2ukfRM0QhB6Amovl0oyOs
	j29r8E02q2mVJlCpWltTE4wslCv6RDY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-209-vpiHKjTSMz-YVczlgADp5A-1; Thu, 31 Mar 2022 06:37:32 -0400
X-MC-Unique: vpiHKjTSMz-YVczlgADp5A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BC10510055A6;
	Thu, 31 Mar 2022 10:37:30 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 628EC60853;
	Thu, 31 Mar 2022 10:37:30 +0000 (UTC)
Date: Thu, 31 Mar 2022 12:37:28 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Rebecca Mckeever <remckee0@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Completing TODO items
Message-ID: <20220331123728.3eb75100@elisabeth>
In-Reply-To: <YkV5jFwoFMXKyxaO@bertie>
References: <YkV5jFwoFMXKyxaO@bertie>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 31 Mar 2022 04:51:08 -0500
Rebecca Mckeever <remckee0@gmail.com> wrote:

> If we submit a patch that completely addresses an item in a TODO file,
> should we remove the item from the TODO file as part of the patch?

Yes, definitely.

-- 
Stefano

