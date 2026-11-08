Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.134.164.83
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794137404;
	b=id2M+TAjITttUWB3XrzRLDJUFoouR0hVcCJrHA+IKPNaEeZHmAHW7YP+5otYCx8qWeMC
	 iYZVO3o6rg4JZbSXZ89pGsAQt0fwRX4xLxkpoefWneCcGZ+iF0OKta9IdfaAZqVg7dncW
	 XzdAyvn9lkrOHXjVrdOYVqdpqFYsmD3K4kb5lBcoeeQbssbfRYol/MhPBMKZBdjH7+B33
	 pOt/2lnTjpi+bKeZ4S4aUcsj+GuPR4RYFFAMmWdYNlKKgTzvkvggxH5okY4Kftzm7Mwjr
	 8b+sH2HQYu5ZMTHszB7nFJQ6QPTJOZfyemY4wFjDPWtsGtfxIYazL8hQi3IeDy7VHCw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794137404;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:Received:Date:From:To:Subject:Message-ID:MIME-Version:
	 Content-Type;
	bh=73iIxq2Sz8upGRDQb7johiC/PzHN7ujPqMBR3lcqmoU=;
	b=sIrdkmjeaMjQSeou8S6rx90l53bJG4cgASqw8cub6CV+/G9qgkGYoqESQpAlgOV+EXtw
	 cRFnub6a0G2maAOwFWMMIk15JEyYybKIMFw0aLW9dQYgz2b2EnTIani6PWXFwDAOoJ162
	 hwgBH3V7vrqho1bSIIexJdHq+jOhhRGJtQsmySSooSQoE1aGTdL3xjvvR2hUMWLOah1ar
	 ujkojWnkFiHX1xYp6CXBLFLzApQjsMdv/ksiHN22z3GF3FH6ARlE+kHToZbRlIcmk8CGL
	 P2LAHVoyXc0kZahbVY1QQSoFOi5LwrDT2QqYo5pR4PvVzcymuFtAjsmr2ip/Xvu17wg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=inria.fr;
	spf=pass smtp.mailfrom=inria.fr;
	dkim=pass header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=T+kOtdhz;
	arc=none smtp.remote-ip=192.134.164.83
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEEAE606A31C
	for <outreachy@lists.linux.dev>; Sun,  8 Nov 2026 11:30:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org AEEAE606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=T+kOtdhz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=73iIxq2Sz8upGRDQb7johiC/PzHN7ujPqMBR3lcqmoU=;
  b=T+kOtdhz2ttkD/cUbOcTeMMV7xxY7BtKqAoYS2bmQsH3LLcsUQ84C61m
   4fBy23FGh3eqwhPXBBFlv9m+34BQ0KVTZHol3oV93yXCA29lbPe6XiZgj
   ha002Nc3qLOtG2gUWAG8ipddf8tCB7tvgHMZXQbam7MfVMMdWq1Ye9pUj
   g=;
X-CSE-ConnectionGUID: vlLWLtSESfGNPTKiWg4ydg==
X-CSE-MsgGUID: xPEM/kKgS5awNQAwmHbVJg==
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,202,1787004000"; 
   d="scan'208";a="304398509"
Received: from 88-188-149-159.subs.proxad.net (HELO hadrien.home) ([88.188.149.159])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Nov 2026 12:29:59 +0100
Date: Sun, 8 Nov 2026 12:29:59 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: outreachy@lists.linux.dev, rostedt@goodmis.org, julianbraha@gmail.com
Subject: Outreachy applications
Message-ID: <3a3ed530-9ff-8a83-deae-cbdf59d76813@inria.fr>
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

Hello,

Part of the application (due Monday) is to make a timeline for the
project.  Please make a draft timeline based on your experience with
tracepoints so far, and then ask Steven and Julian for feedback.

julia
