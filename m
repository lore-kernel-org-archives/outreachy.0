Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.134.164.104
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794087164;
	b=LtOpiG5xj5Y3egjZisMp4RSj+yV0npp7OUCUbOpy9GvLnq8/b+T4+1qvQ3A0YdpM2DS+
	 Ne64wCpQPbvqBNvcZG3hTWwLu8WYVHjcGhnPBU9Ymm4mzJn9MV8rcK7EYK5P2aB0zYoRH
	 VXqXHt7UiLUIM7dLo5OXoZp93/7B42OoOtXi0XfDPaNHDEyawADxUzFDsyjf8Vuafq2Rc
	 507CGkNWpNi4AaspkghRpxZwX21WzeB2mKBpV/xAHRrFM5koVre+eLbP4hnpP/123UViT
	 a33tXgN1DGV/Tl7vKw/7hrq9KztbTzkFmId+8YHg7+xq0Yh6SaadkiJ6GtDDA/Y0pIw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794087164;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:Received:Date:From:To:Subject:Message-ID:MIME-Version:
	 Content-Type;
	bh=TQHQnHtDSNUrCsKqfomc40FWF2UquHKxoMbNhxGLN8I=;
	b=HU83SCpiaQ3DIYuLGtc2AelVGGRYXhINnlfs8BYaIzJQhc6aMePDsezAMfm9to8MQJoV
	 hyjWixZ+Yaz+XmddM34DVBHN41m96YY0vTD2ZhEt67VuXr0S17NNmOj0LYo7IPCaVGqga
	 ddejbTVHkJLUguptDf4R65nOuOynm1vfntDGq9nmMHBn2aKzsoUIFIfnLtxdbpIt7bZKf
	 C/m8+04VIckty9SMgyWy8yqxO2Qz99/O4IyCHeZcsFiueYrk6REMRD7kPINW5yIIWwusg
	 49FIHaDtq6I7t4NYbnvdnUSQDCu3BLlvgAu9yRLs9a5nIFdAXlMP4NF83mNZLlWHjlA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=inria.fr;
	spf=pass smtp.mailfrom=inria.fr;
	dkim=pass header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=OLC73SMP;
	arc=none smtp.remote-ip=192.134.164.104
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA8D606A326
	for <outreachy@lists.linux.dev>; Sat,  7 Nov 2026 21:32:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 1CA8D606A326
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=OLC73SMP
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=TQHQnHtDSNUrCsKqfomc40FWF2UquHKxoMbNhxGLN8I=;
  b=OLC73SMPeuOXZsaiMuU3/k/pR9q9USlzC4/NjICp1hHx7FlOCgGaGl13
   7kd/87hCVsyAn8kFjjl2hudT3QFw5El2+w1HpWs9Et60lgLTJFG2x1jR0
   E78BQ/YPazShNaEx0hSt7c/0ZMOFzCSBwkwoMwbR15w9CNNwwp43P0Bac
   Y=;
X-CSE-ConnectionGUID: Rd2LMKFOTJmBCili5VgQRw==
X-CSE-MsgGUID: CD2c0kz8SMqdLnW5CK9DHQ==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,200,1787004000"; 
   d="scan'208";a="162060846"
Received: from 88-188-149-159.subs.proxad.net (HELO hadrien.home) ([88.188.149.159])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Nov 2026 22:32:40 +0100
Date: Sat, 7 Nov 2026 22:32:39 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: outreachy@lists.linux.dev
Subject: tracepoint patches
Message-ID: <f79375ec-2599-207e-f652-4341b335f42@inria.fr>
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

For everyone, once Stevehas approved your patches, please send them to the
maintainers.  Please keep the outreachy mailing list in CC.

thanks,
julia
