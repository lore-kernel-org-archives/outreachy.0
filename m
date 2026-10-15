Received: from mta1.migadu.com (out-24.mta1.migadu.com [95.215.58.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086F849E5C9
	for <outreachy@lists.linux.dev>; Thu, 15 Oct 2026 14:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.24
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792073484; cv=none; b=NRMRSMlCcVfXoqLEGxWQPfuBQBX4XE8nxZChU9c+3dRmu58yDUkdI6q5b0y2gIA+k7hg0MyF+3RqeyRBJg3soqtfyBp2W0DZmr4UGME7FGJP3BkkwqXcPs1uH/Bs+0JLLr+3djDgnduCYrhbXKxhcGJro1jabaFDF3jb7V8a5Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792073484; c=relaxed/simple;
	bh=M7zUxXkG9kiUBcxSGb9IU1PEYhMVsKfXF8Ctk4NjpQI=;
	h=MIME-Version:Date:Content-Type:From:Message-ID:Subject:To:Cc:
	 In-Reply-To:References; b=Vhm/d71z9XC6LlQeetyFRhIaE4I5gPyGoNwWEvbcmFeaN/83oOuQ5G4VcXADEW9abrGdQlWo/v+LhC2onT/28HrVxxGOyRuOBY1N5yUGvWQC0Tu3Ft1Rx91Trev7il015k8qIJOypAKLKm8/GS3isucQoxhDFyeLOq65FM0al3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=iAdFUwBx; arc=none smtp.client-ip=95.215.58.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="iAdFUwBx"
X-Envelope-To: outreachy@lists.linux.dev
DKIM-Signature: a=rsa-sha256; bh=M7zUxXkG9kiUBcxSGb9IU1PEYhMVsKfXF8Ctk4NjpQI=;
 c=simple/simple; d=linux.dev;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1792073480; v=1; x=1792678280;
 b=iAdFUwBxjeLPK2WkTGdiUmwz5BtQJs8yXijV+pnb6NMcyDryQ2NVH+/GIhHF5cfcWxIVZkTW
 MbREdIkeeKQiQIyxND8GWIU7UcS8ulnNyO2n6XETLlymp0G8ISxVzQdl4B2UL6eir4BHysULomg
 fmXyNMrQ/ZleJ4HuCG+W4f74=
X-Envelope-To: outreachy@lists.linux.dev
Received: by smtp.migadu.com with ESMTPS id 4891979b9d5aaca1;
	Thu, 15 Oct 2026 14:11:20 +0000
X-Mizu-Trace-ID: 4891979b9d5aaca1
X-Migadu-Flow: FLOW_OUT
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Date: Thu, 15 Oct 2026 14:11:19 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
From: "Luka Gejak" <luka.gejak@linux.dev>
Message-ID: <5d577cb1b4a91e8cdfda171bc7100105ae90d91e@linux.dev>
TLS-Required: No
Subject: Re: [PATCH] staging: rtl8723bs: remove unnecessary parentheses
To: pavankumaryalagada@gmail.com, gregkh@linuxfoundation.org,
 outreachy@lists.linux.dev
Cc: error27@gmail.com, ethantidmore06@gmail.com, dennylin0707@gmail.com,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, "Yalagada
 Pavan Kumar" <pavankumaryalagada@gmail.com>
In-Reply-To: <20261015120634.95218-1-pavankumaryalagada@gmail.com>
References: <20261015120634.95218-1-pavankumaryalagada@gmail.com>

October 15, 2026 at 2:06 PM, pavankumaryalagada@gmail.com wrote:


>=20
>=20From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
>=20
>=20Remove redundant parentheses around the address-of operator to
> follow kernel coding style.
>=20
>=20Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> ---

Hi Yalagada,

I'm just letting you know that this change is no longer needed as the
entire staging/rtl8723bs driver is being deprecated and removed.
Support for RTL8723BS has been ported to rtw88 subsystem.

Best regards,
Luka Gejak
