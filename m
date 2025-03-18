Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82B072D78A
	for <outreachy@lists.linux.dev>; Tue, 18 Mar 2025 13:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742302990; cv=none; b=Z3U4iRe53nIC01P12CmpjAf1UU1dglNEcabcibyGswuRT78JDKUqfZfTHU40geidA5fFyOieyua6U2Bta91SiKWoDT13jrNROyeil9I7UNjDo5WPucsBfltAK2hy3Jyatw6Y+PfqtoGb3NNedSUCKunzXmQPLZoiPbsBq3Xlp1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742302990; c=relaxed/simple;
	bh=yAOC+Uoh9RDqfxxgMJxxzCwDa8uZkS6WXdeL8tZJ5zI=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=NJkWzTsmgnNFBahM05Fs4VmMK1YgzE0F5qMLlSAIGA4YBxXjErBcRs/pQY/XHj6p0Mw5o4s+MlNuYPIWg+/LzNV0pFVOAJGfawTGBt9a3bakOBBImendxvESvbBIUhGp7PtLq0P57u0Eksm8D/qRmKtXK9hiA5XUeFi1mKXSfo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LqmCgqhe; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LqmCgqhe"
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4394345e4d5so23759865e9.0
        for <outreachy@lists.linux.dev>; Tue, 18 Mar 2025 06:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742302986; x=1742907786; darn=lists.linux.dev;
        h=mime-version:content-transfer-encoding:msip_labels:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yAOC+Uoh9RDqfxxgMJxxzCwDa8uZkS6WXdeL8tZJ5zI=;
        b=LqmCgqhe/D4IbrgFr7GlMC4f3Th61sZWH7hge1JeSxH7F93QWNNteEwzTAIpCt5QyQ
         7z9254kWN5aZ2CA5XL2ZlXjTJlHBaBsPJJv3TecchUi9jmplhu1vAJ7Mn4it2oVUrabh
         vcb3VuudnEqslrWKGgXRBPS7ibSpDFdGDkqVJMUJ5PpCRpm6x9dT6Q/3ILLEYZza90Im
         XnS231KKo1X65MR+sqDhj/woN7O/dSGzpVdIB6pRoQGOqmVxLQjBriLyVc7eU0wHVIhm
         xAqtiodCL7p3nj3i8zK3ZuJZ0CHPenZUGfNWeWmTUigIUUJuVsMg7n/AIH6GM6XzsZcs
         7QSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742302986; x=1742907786;
        h=mime-version:content-transfer-encoding:msip_labels:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yAOC+Uoh9RDqfxxgMJxxzCwDa8uZkS6WXdeL8tZJ5zI=;
        b=Ftv5c8QB3JY0oiRCrmiyHnwL5E574BMV5njS2g7Q58/XbXS8qZVSMtVKjBhCYmaWHJ
         J/vCrMYzu5Lt9d6GJH7Z/0HFDYMyMIWAZqIvK+cv7K/cXjl2dXISjh/tf/bCzHBEpU1p
         32dGWfuzla1YLrtP7Tt8B2RmNaSD9k17gTU4+uUg+1mav9zhlVsfS1gDf/hDT8nISaT1
         I3GFVxGpyTnUqtx1rXYCIWe0im75jDLXGNMve6itZy1+fVnDuIK2sLnA5Hd5Sq8lo4zD
         JZlmVkqDqf3ZkpkIKtf2lkIfq9C0q8K7jlPWvZAWDUN+nKhmCDkb5LfejLIjo8ROwQZa
         uPRQ==
X-Gm-Message-State: AOJu0YwU1IlnU+g6HLm9jyXEQixvvnExTk0sDVJ/BbGhL5NAuBSB9++b
	3+FktYLWmRdoMwdT+hy516jjLv3dkc7X6V5hH+EYwT90ug0g6lTbTqdXWZbq
X-Gm-Gg: ASbGncv84W69FWRABlTAAwx//GdujKA9cLo0XSKtDRwP92YatzZpA4XGAtYtvlKp/Mm
	mBRAkzSmlg+mfnxiRuoZ4d3NriDJUk+/xHnbplPSUjC+r4VNJW90TsEnNzTYw1fUxNQJ6mrA522
	gvIaK/R5WoNKdno3X/4qUok2TL0DFQ/U9C1+TV8zVdVI+kyrkOPaHGckpD2xYFth6zco5O/gGU7
	Hx5c8oytplKqXvA2xJzi6uGvI1WNsER/OlaOu42vnrNFF0/OlpGqNuxBC7XINFDNGa5YtpT85rJ
	Ul7vlHYnLadWv3THvXNcJQng7ZGIgX3/jLl5s9IIR7V9jyNT66Zyi66MdUCxfWPJ0yBZ0sCeM2s
	U+/4S+JLrbRY6ns+yFdQkakAz7w==
X-Google-Smtp-Source: AGHT+IEC7J7YnJ0PuzYVom/23MsJby7kWJUgn+nV7FX/pE3RNTTJSGvs/6iD9Z+TJ8qQjXAYgzY4mw==
X-Received: by 2002:a5d:5983:0:b0:391:231b:8e0d with SMTP id ffacd0b85a97d-3996b499f9amr4174888f8f.39.1742302986213;
        Tue, 18 Mar 2025 06:03:06 -0700 (PDT)
Received: from CWLP265MB4434.GBRP265.PROD.OUTLOOK.COM ([2603:1026:c08:121::5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395cb318afbsm18619634f8f.72.2025.03.18.06.03.05
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 06:03:05 -0700 (PDT)
From: Nancy Enos <nicymimz@gmail.com>
To: "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Subject: Hey Outreachy
Thread-Topic: Hey Outreachy
Thread-Index: AQHbmAXZpluOGptpSkGaEJsCB2hu+Q==
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Tue, 18 Mar 2025 13:03:04 +0000
Message-ID:
	<CWLP265MB44344955383DB5471A968D8DAFDE2@CWLP265MB4434.GBRP265.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator:
X-MS-Exchange-Organization-RecordReviewCfmType: 0
msip_labels:
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

My name is Nancy. an outreachy intern in the contribution stage..lookingfor=
ward to making meaningful contributions=
