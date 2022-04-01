Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBCB97B
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 15:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648826027;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=i4Ur6+3lL+e4B0kPoD23SFMwI3VPujxtuJiXik4CMtQ=;
	b=aHHr6p7qqYWT+Yz4iDBXvmi6iRi2/xe3rcwAS2P0Jo+JfiMFzkQljDV0Y9yT18pXc5P5mL
	Frnvoi/iTzHcTZr8jW3g1Nq5VWWZ7h7ZOYJaoqVrPytes0UQcktObQSEQzOBRxICPo8ue+
	D3ygBSOo311uHhzjqt1y6fbDyLnYssc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-604-rG7dABAPMwOuguxUMUOabA-1; Fri, 01 Apr 2022 11:13:44 -0400
X-MC-Unique: rG7dABAPMwOuguxUMUOabA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B2B42801AB2;
	Fri,  1 Apr 2022 15:13:42 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4F3465D6B1;
	Fri,  1 Apr 2022 15:13:42 +0000 (UTC)
Date: Fri, 1 Apr 2022 17:08:39 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Jaehee Park <jhpark1013@gmail.com>
Cc: Alison Schofield <alison.schofield@intel.com>, Outreachy Linux Kernel
 <outreachy@lists.linux.dev>
Subject: Re: Finding Clean-up Tasks
Message-ID: <20220401170839.3919d0b4@elisabeth>
In-Reply-To: <20220401142803.GA38814@jaehee-ThinkPad-X1-Extreme>
References: <20220331183805.GA1182645@alison-desk>
	<20220401142803.GA38814@jaehee-ThinkPad-X1-Extreme>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 1 Apr 2022 10:28:03 -0400
Jaehee Park <jhpark1013@gmail.com> wrote:

> On Thu, Mar 31, 2022 at 11:38:05AM -0700, Alison Schofield wrote:
>
> [...]
>
> > If you have a patch AND a question, you can send the patch
> > and put your question below the scissors line. For example,
> > you might see multiple instances of something but are not sure
> > the patch will be well-received. Fix one instance - and below
> > the scissor line ask you question: "There are 10 more of these
> > in this file, just want to sanity check that my approach here
> > is wanted."  (If I were doing cleanup today, I'd use this tactic
> > for drivers/staging/iio checkpatch ERROR about octals.)
> >   
> 
> Thank you for advice! I had a question about where to put the questions
> in the patch. When you say scissor line, are we putting dashed lined
> somewhere in the patch and writing our questions?

Let's say this is the original patch as prepared by git format-patch:

--
This is a commit message.

Signed-off-by: you
---
 file.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/file.c
index 148b06a..ceb10a6 100644
--- a/file.c
+++ b/file.c
@@ -927,7 +927,6 @@ int function(void)
 
-
 
--

you can put your question (or any kind of comment, really) there:

--
This is a commit message.

Signed-off-by: you
---
I'm not sure this patch does anything. Should it do something?

 file.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/file.c
index 148b06a..ceb10a6 100644
--- a/file.c
+++ b/file.c
@@ -927,7 +927,6 @@ int function(void)
 
-
 
--

Those three dashes are also commonly called Signed-off-by-line, or
SoB-line (the term might refer to the line above, to the dashes, to the
line below, depending on whom you're speaking to :)).

> Or did you mean we should reply to our patch?   

You can also do that. If you're really unsure, you can also add [RFC]
to the subject, before [PATCH], to make it clear you're asking for
comments rather than actually submitting a change, and then write your
questions, concerns or considerations directly in the commit message.

-- 
Stefano

