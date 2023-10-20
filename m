Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B143A20E7
	for <outreachy@lists.linux.dev>; Fri, 20 Oct 2023 05:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="n05IZ1Eu"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=5HUmPmSlB1g2BAfnomqYU77qTSumR2teTCwBbF2RUMk=;
  b=n05IZ1EucbJeVRgyLhrZVtxECVyz+XH5TC+aaGavUuu7CJC6h0IRYznA
   jucNT4Zp6YQCpjgXMQE/W8iMKTgJOtkJROQldV5MfiNT1byUJMQ+PzsKa
   kktxUzockR4bLEnU5nRqgUeOqngQ0S6dR2awx8L/V26CE5VDmpqRNEaCh
   Q=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,238,1694728800"; 
   d="scan'208";a="69249309"
Received: from unknown (HELO hadrien) ([87.129.180.234])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2023 07:28:05 +0200
Date: Fri, 20 Oct 2023 07:28:04 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: outreachy@lists.linux.dev
Subject: Outreachy status
Message-ID: <4ea53aff-32c0-dfe5-8ede-7aa22c9875b4@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

Thanks everyone (both applicants and reviewers) for all of the
contributions so far!

There are 10 days left in the contribution period.  If you have a good
number of patches either accepted or in the pipeline, please contact
mentors for projects that you may be interested in.

If you are interested in more than one project, please feel free to
contact more than one set of mentors.  In your final application, you can
apply for more than one project.  But it would be helpful to rank them, if
you have a preference between them.

I look forward to seeing your future contributions, and let me know if you
have any questions.

julia
