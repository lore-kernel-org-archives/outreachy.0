Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714C4C2C0
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 11:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="Gd7z13c1"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=fPAQ9BpffFMY5HdJCoQNm03z+f2Hlz3w71Lm6W5ix/A=;
  b=Gd7z13c1ykWQM2/t4jIodSaAterw0EKjv6HwUC3dET20FQTFDlSR/H0z
   NXJ6DNS7I3anCFJZQx+ZJjgJ1jVY0yxB+i/gTJkuKYX1nCN7Af8gUJifV
   A2ea3tYraiTp0N3Gv0ZJVUG9YztpMTvCIoVTLarqovk4TQiRrNT5Qq8ov
   g=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,261,1694728800"; 
   d="scan'208";a="133747117"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Oct 2023 12:23:03 +0100
Date: Sun, 29 Oct 2023 12:23:03 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: outreachy@lists.linux.dev
Subject: [outreachy] applications
Message-ID: <alpine.DEB.2.22.394.2310291216100.3136@hadrien>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

I got a question about recording non-patch contributions in the
application.

First, you must have at least one patch accepted into the Linux kernel to
be considered for an internship.  You will naturally have a URL that goes
with that.  Please make a separate contribution for each one of your
patches, so we can get a quick idea of how much experience each applicant
has with submitting patches to the Linux kernel and getting them accepted.

Afterwards, some projects may ask for small tasks that don't directly lead
to a patch.  These would be submitted to the mentors, not necessarily to
the mailing list or the Linux kernel.  If you don't see a useful way to
obtain a URL for these contributions, there should be a box for providing
additional information, and you can use that box for describing what you
have done.

Let me know if you have any questions.  Remember that the applications are
due tomorrow.  Check carefully on the time, especially if you live in a
place where the time changed this weekend.

The deadline is Oct. 30, 2023 at 4pm UTC.

julia
