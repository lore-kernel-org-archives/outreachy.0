Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=216.40.44.15
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794194243;
	b=fUrU5cbilB9Pl39rh3eYAMleS9a8wv53kOYsLIAnjGBSTDo+C7OZDkxy1s5h7gFWQ0Om
	 tSFowNPIeI9nksBN1dqbzE2V9mHetyvao7wPYnCEKmHU3qQR8obzP5TokS9r1ZcbGDJze
	 vpTtJTCR6XUssdAeT+ihWh6GMJrw1VSW9J3g8qJXbM/a4QQT4Fj8SHxjec3PKIqXNfj5S
	 kRZGKrqjG0S/Kv8/DUaXz4ehN3s4YzWtn1bwjShvboMmQbfSgciwylLSy7X5NAlf3Z86o
	 C7QM5XjEwMO9gQ8zR1ZGJlhmhYjg9QcEBCAHrceQJFHstpZ/keS0VxoDrsmMY3Ej7jQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794194243;
	h=DMARC-Filter:Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 In-Reply-To:References:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:X-Stat-Signature:X-Rspamd-Server:
	 X-Rspamd-Queue-Id:X-Spam-Status:X-Session-Marker:X-Session-ID:
	 DKIM-Signature:X-HE-Tag:X-HE-Meta;
	bh=XqglL5PyBn2YXS/ZsmrbXENvRW0l2HJk9jL9Rib6LH4=;
	b=tdqBKlkItSW9iI5wMksod2c0P8T/gZue6REcbcsnqb4uh/uVeVIbGYi/Pa2nhrfZrHnv
	 TP/MJJl233aSXYdJ2akTbaijHVPowUGl3JRhG/GaSYpCYEdtFOrsElPsRDx9RKHMVOJfH
	 mnX9DqhEuyHlBecbME5hzelpBHt0cMTkTws/MrI+IBkbs0jzy+DnMij/ALl+UFR64MGwb
	 HYssbiQbTkgSNKfyqdAsE+OwcPDvbTb8npmyRauzhptxyufotyzBF4y9iZ9rH49/5H7UL
	 C7B8s23xcGldHOzZfJcJWhf4NQRwAW2obCsZaxNolkeN2g+NJJN+tM6Ur3ERSq8RNBQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=goodmis.org;
	spf=pass smtp.mailfrom=goodmis.org;
	dkim=pass header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=Z1UJKqKk;
	arc=none smtp.remote-ip=216.40.44.15
Received: from relay.hostedemail.com (smtprelay0015.hostedemail.com [216.40.44.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC0D606A322
	for <outreachy@lists.linux.dev>; Mon,  9 Nov 2026 03:17:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 3FC0D606A322
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=Z1UJKqKk
Received: from omf06.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay09.hostedemail.com (Postfix) with ESMTP id D645B805C4;
	Mon,  9 Nov 2026 03:17:14 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf06.hostedemail.com (Postfix) with ESMTPA id 49F062000E;
	Mon,  9 Nov 2026 03:17:10 +0000 (UTC)
Date: Sun, 8 Nov 2026 22:17:04 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Lame Morupisi <lamemorupisi12@gmail.com>
Cc: Julia Lawall <Julia.Lawall@inria.fr>, outreachy@lists.linux.dev,
 julianbraha@gmail.com
Subject: Re: OUTREACHY PROGRAM
Message-ID: <20261108221704.1734c368@fedora>
In-Reply-To: <CAAqOpMmsRCXnmiWHsgbnv5WWpJ-qnG_vPEF93Myd7xsgk-Po5w@mail.gmail.com>
References: <CAAqOpMmsRCXnmiWHsgbnv5WWpJ-qnG_vPEF93Myd7xsgk-Po5w@mail.gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Stat-Signature: cm93tqdj5pugmqi7mtd83meuzug8pwty
X-Rspamd-Server: rspamout04
X-Rspamd-Queue-Id: 49F062000E
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1/I0p6T93tkrdmD82vLUY6rWpAed7qEaos=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=XqglL5PyBn2YXS/ZsmrbXENvRW0l2HJk9jL9Rib6LH4=; b=Z1UJKqKkZs7mDaSlmqrzdyBA+lfWbH8LTiHD23jenx/+Jz7ciFMFRyHiwoX2vLS3WAWaSgCajhl9lMbvQm+qyMOKlHkNWpUkFt23oKT8OSNVMp+nTHUeB3XMYBHeNav9WtPiJjuHEot/8FSy9tbeqPmiKkRYW+yHwpMY9Fi+y6Q=
X-HE-Tag: 1794194230-893234
X-HE-Meta: U2FsdGVkX19m3jJiqWFnLR7v/kjZx0/Fp+SWSfhk4GHvTIFuglmk3E9QXaqMTYl6GZshvielEoz8nLvsBJeXSBaUCQM3jz5ygu7hTSJyr2Ykl720H6iCNmA/R6QQptYNXouswk2jbS84X7A2UdQNVNFy91WIlZNDRJ+FgsdmtipPeOokZrnEbLzzk5i9P4Jcn/qe3DwOm7OQ3D2aekCAXByZpsGUehHdk3QC+s14+YTEeF6qVNsZ681MQH3ckzA+B1t/WQaIkDOieR/og1Dgx+cC23FaKyGd9a8MTC251k1KBvLhF3/kTMOnzTBDtpH4S5gmWrDzROHz63UY9bQkiYo5QiYf+fut

On Sun, 8 Nov 2026 14:55:28 +0200
Lame Morupisi <lamemorupisi12@gmail.com> wrote:

> Good day
> I just submitted a contribution to your project.
> "Remove most known unused tracepoints from the Linux kernel"
> What is the timeline for this project. What does your work schedule look
> like? I am currently unemployed and not attending school, so mine is pretty
> flexible.
> 
> Hope to hear from you soon.

I believe the deadline for new submissions is over.

-- Steve

