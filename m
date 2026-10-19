Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138D941A8F
	for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 00:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792368346; cv=none; b=YnMHaI97hUz6P5/4+k7Jx5Gfa1taZuTlxqlTRm1UUSosJzrw3NAzNd0hYho8APaqzRD57X866oDkQaGLFvAn12BctFA6la2MGD5WEQLS72qUrUIx/p0UjEctyqMfw7bH7ZgRjgGuoKn38Ic0mga4ZRwRRKU/mJo1yPsjzFBUDdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792368346; c=relaxed/simple;
	bh=ifjHrypS8OaIbgMtrNppOarqjtvx73eEWodHO2AKcL4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=G1v229ADPGNVZqu3R8J5mHtSPCyR8ZTAWBbTHLyi67hHaz0NwY8rhWVTQIdRYDva7990GSYS/Rd/m3jK13CRVSFrm4PlkY6K97OjVwdLhVaIEnImxaRr40Ihfkc+UdDFA+9QyQmkI3svU5u+p+sfP3srxuby2g7AvUU1i718x0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SzETRaPf; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SzETRaPf"
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-48df4e9d2d4so862830f8f.3
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 17:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792368343; x=1792973143; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ifjHrypS8OaIbgMtrNppOarqjtvx73eEWodHO2AKcL4=;
        b=SzETRaPfKQMNltNSIxIFcKzmuD7c0heArJL1JqAy7Vwj+sCdQhpHjHA+wbGAvuca9U
         +qX6t6ftynOuTi7PEvqcVmlAmlwjs9MnykHEOMhoLntxIDGvqXFmMwVJHV/jmi/ksjUQ
         o40Kd+9D+SjIcVB3dZGVrN3uEvNAoBARRP+UqnITbsn8OCRufW72jbDPb6QQZUNXUrVB
         a1mzC5hX8ZTPcfBrrrFaYaTnP6Ey4B2n9ilDmurKq6v3HZWo1zdQ5qTBl+xo25amBUVz
         HAmCZWOqxls/DHqr/HXwVXloxEvQ146IqfvzsnKCyvEm3lBO3TsIhuQUAYK3cWWdU+PZ
         q2/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792368343; x=1792973143;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ifjHrypS8OaIbgMtrNppOarqjtvx73eEWodHO2AKcL4=;
        b=oMg1opTiMG07U5Dxpqk8271LiknCiE3f01Q0QGivFqKsx3vi76ZXAttYZxh6uYLpO7
         b7nJLZqPIdJltplDAoQSwcVJPUXYPep6gtJKa4xjsYIagQWlDddlh+YeJqKCiPpgJt6+
         PqniNpROAkodhas7ipfHkjrAs9el/BG1/czFrnksJPG5GAST4OxR9WCHVDhudJ6hURlG
         lOdgXyRBPPO+p7ZILkpT3I6DvxlWPJZOJMjqqOeTYIKcg8Zlqgrr9UFSbWCANHPAjwaQ
         HQudMnQvQLJLFX2QeMnlDhq+o4pLHQoeVLh2w34RM0RzOyidAKIalhslWhgptu1ylRFP
         Q8Lg==
X-Gm-Message-State: AFq9FYL/4zRU4hLELbRd8aa2P7RTuqNICiYdWHdfPYHHP3lbprY3pN3n
	ABNF8qlVZ/gNmn+q88qwf8GBlWMPwfO8XWAmnip44rQw8l7H+kvR7D7Z
X-Gm-Gg: AYBFou30DWrtvuSpJBv5VdsnKxwpLeKKvCQTA2asCBKo/I7Zxn1NSHXQVUtftLLw9H+
	tI/6gwue6hXZzegt6g7yrP17yqKwgn7hbH/RgA7Vi7epx7U3S0DJbKzIeWqoIh30ounYEqQ+rOW
	rInTI8GN+0Mm9PTqZvXc62jSC3wt/AEcgCKjtXYF9+1/VYXIPid25Eo32VfPQe8dfhklFrkhnhP
	elGNVglIOBKT9dvqFZpvFdd+9ikfeBIPCM4Pl1uCRCM5UjEd1oqtPfgOH2CbaLC07CKTi5gIdY/
	Th7kUFVmJAykZzekkVN0jkArBhipAd+fAoe2El2pIyhfjFZhywkPQ2wAQijVYXF0vhpLvLNXVs5
	qjNea8oEv3JeQuBjubiLiklL/umWyfzB82VPGfNfknUUO5qZJRbLQgnee7+FjdRsBVbTLY4yGvA
	fGrsVQXz2VEo/RVF8qJN7WKZhjbQ1aP/7+rWsll57KzvluYMRnM5JTun4knAObrnv4k8g1w3jkB
	IY23cwYNtEyu37cklH6Io7KQ2g=
X-Received: by 2002:a05:6000:41cb:b0:48b:10c8:2181 with SMTP id ffacd0b85a97d-48e07f9a2b1mr10996069f8f.27.1792368343069;
        Sun, 18 Oct 2026 17:05:43 -0700 (PDT)
Received: from DESKTOP-0KSTGNI.localdomain ([156.213.131.39])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd5038b8sm19923438f8f.48.2026.10.18.17.05.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 17:05:41 -0700 (PDT)
From: Temitope obabi <obabitemitope765@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy@lists.linux.dev,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	linux-fbdev@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: sm750fb: Remove redundant zero assignments
Date: Mon, 19 Oct 2026 03:03:10 +0300
Message-ID: <20261019000443.753-1-obabitemitope765@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <2026101838-oaf-bobcat-efa0@gregkh>
References: <2026101838-oaf-bobcat-efa0@gregkh>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi Greg,

Thank you for the feedback. I understand that keeping the explicit
assignments is preferred, so I will drop this patch.

Thanks,
Temitope
