Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29529216E01
	for <outreachy@lists.linux.dev>; Fri, 21 Mar 2025 13:35:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742564150; cv=none; b=eRA4ikNtgg0SFpeTmHCCamoKOopEYnWYMgwQtbXZnoJVJPik/KQTJlZbvqfj3n/rLJugIWjKuTfzg8dhVQ404uAx2gxjmO/E5CR3XGeZ3FvjbEk4Tnd/gyMIPzia/JKMGnmCG/C7RRxteguE6KrdR6vxB8fJkuaLrLteqRQw8aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742564150; c=relaxed/simple;
	bh=1g2fIl1ek9iuUA+uolMdOn1GMunAEGztb+Hee7vCjlI=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type; b=u4OlS692sifDLFcI5pvdpOP1DjlvfR1QS51jI11T14zSFDWVz0Q80mXI5Vz6Yr71vrdvQXwqSNvDy8BBNZl0BXS4Tkgp7kO3+8c0l/ByUYtSs28jTgUGkrDdZCtGx9irJgEZ+bjmVjn3ISuawZNpl2mfpiw9G6n7D4TvLPHPBMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=cccjnT9H; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="cccjnT9H"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=1g2fIl1ek9iuUA+uolMdOn1GMunAEGztb+Hee7vCjlI=;
  b=cccjnT9HViSLpbHZWmtLxRN/D97/JHBYgjfX9J//CUHaI7WrBwWoPqJV
   Urz9pKAbkv6Y1nK9vB52thrAimBCqlECxaPzaHJ5mY4CnOianbQquHBVz
   f4XC/vWZPtg8gvXcf1ppmiP/hhLz0KnUCPdw91mwq+lngDLU9dmw76N3C
   A=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,264,1736809200"; 
   d="scan'208";a="112258952"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Mar 2025 14:35:47 +0100
Date: Fri, 21 Mar 2025 14:35:45 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: outreachy@lists.linux.dev
Subject: patches
Message-ID: <e1364a17-c954-b674-d736-d456e2df813a@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Just as a reminder, please notice the following text in the tutorial:

The staging tree, in drivers/staging/ is full of drivers that are not
quite up to kernel coding style, or that use deprecated API. Drivers get
placed here in order to get cleaned up.

Restriction: Do not submit checkpatch cleanups to Outreachy for
drivers/staging/media/. Any other driver in drivers/staging is OK to
cleanup.

thanks,
julia
