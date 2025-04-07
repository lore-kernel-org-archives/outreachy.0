Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FCE2224FD
	for <outreachy@lists.linux.dev>; Mon,  7 Apr 2025 11:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744027131; cv=none; b=r4speh9EklxG4MCNb6/KoKgyIeGdBfV1/nBOv24Tu74ZT8hHZ/b1JXPvUvs0A4poQ33iXwXphs/xTzpLgtSwBTXAD1a3s40kQZkR5WftLvmk3vYc032nrNb0vXHLTmzohmAv9bLeFZ8lS5uXrEnULDQj/ySdLX8nnmYhqFx/sPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744027131; c=relaxed/simple;
	bh=y67/onIexqTW52Zbz8Gfge4aT2KSbYhO+cyVcFMbPxI=;
	h=Message-ID:Subject:From:To:Cc:Date:Content-Type:MIME-Version; b=dalGCHUuCX2YShvVIWNFQz2smGfyT+T0LCnakyUprSuopnzTmi1v+VHkfVZJZdluamyMEsCdxlT2HesXxG5EIwdxStWIQ0MQLYY6pyg7nqLwZSCf1fSG2a/kNDrNR1+PkJzh8IHSeQs+0XEuBelBu/SU1jao6G8ZIODQ5MUzpxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JSjuF5cH; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JSjuF5cH"
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43cf034d4abso46050565e9.3
        for <outreachy@lists.linux.dev>; Mon, 07 Apr 2025 04:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744027127; x=1744631927; darn=lists.linux.dev;
        h=mime-version:user-agent:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=y67/onIexqTW52Zbz8Gfge4aT2KSbYhO+cyVcFMbPxI=;
        b=JSjuF5cHvGVdR6+igdlwJ8gC97IpsuHOm0+Y3vwEh0YKBEhFOWo3RdHUI2Ni91A2yW
         DEmF1FSFAXSdgV1bm1IHqySjQYjDlUqarxgHSoFdXpWTf0mWb/aYaeBQixZ9yPVcHOoD
         5JNq+K5Vz2UZW3ETobHVuFcQnEz9LReXDsM3keFNLRUbi4J/kEKWgo3o2XzIFoazU2xh
         BHk94KstpJuJFr7Tdyv6Hh8whpp4fvrXcOdiVFxX0BxrDoH3UkIuFfaSI+lVAUvKEoB7
         /TQxhmSc6blnEdnqSSDcBAtAd4QvgJgGOMuKSSW310hGmVspu0JRN1e8362Nfalpk0wR
         zLZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744027127; x=1744631927;
        h=mime-version:user-agent:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y67/onIexqTW52Zbz8Gfge4aT2KSbYhO+cyVcFMbPxI=;
        b=bmwT3/c1dTW/eDXVlgGQn8d4volB18kW5Gqdd5r68v1fgh2tVrCUNU86e5rgslPsJo
         gVydboFJ5/RotQ7j9UZzt5wTdJDTq6YpoDyWWK2qNWyns1eVJLXDKN1Cir1HC1YCp03F
         sMmbsLmClm7Aqo4AYIjaL53pc3sCmm2pmmhgY2t+9F9R5xg96/JQRsyQJ/kh/9MtvCJn
         U5x7lFCkUlDj431i+RZ11FM0Z37B6OtPvIv7asJzYjjTiOGclyukqEisAGmMSJ11ULiG
         fmb/gjl3npEdFzMyo9FGy/4mta/un/aTMPsVkiohj+F8B1FQLTD/m6QWdTZKcvHr+kcd
         fR7Q==
X-Gm-Message-State: AOJu0YwvZvN4eLEiqenPZfMbzlJfR3gI1XgIxx/tPnQ63G9qQAGQrwyr
	eLMK/D2WfRjcscT62+cO2789fx8trxB642EFJNq62TIDnCSXsG4lpLWRaIMn
X-Gm-Gg: ASbGncvxWXLi+E/5dE732S5ZxoB8aeU+WOTvHsOsHpPRohQTi7cLjd9C6tzusNrSzSQ
	xrRF7RduRhjw1kwf84O8zSLBZwWiYntWhudWuOXTXnbhFkj/mNqtWS9phEZbGX/oPNuTezjs9wV
	1OM4ltCmOcVwAMIEF8PECQf3Z2cYo0PKibFkRgrU4HZH50giowJ5p+2tNacwr40hXBUgxjcAJ7I
	503ZStg29tpp2VqZR2gPdElzFI4EHDo+WKULHTgVA1Qc3zLnuLuYDtMKKPIYMPsfY8TYfk1c0EJ
	EEph6tnYeD0vgyV9fUmbpfx4sULgkCYls2iUoVXrZ/ih616wH/fogOA=
X-Google-Smtp-Source: AGHT+IGG3dXVztaQ0dpHVdnl+ITAQ5ER3TO/iy2P6xqHk/2rzpJH07twCUb639UM8YAp7E2gVG1pGQ==
X-Received: by 2002:a05:600c:34ca:b0:43d:49eb:9675 with SMTP id 5b1f17b1804b1-43ee0768b1cmr76377805e9.22.1744027127215;
        Mon, 07 Apr 2025 04:58:47 -0700 (PDT)
Received: from [172.16.8.120] ([197.155.71.138])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec1630f21sm132422085e9.8.2025.04.07.04.58.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 04:58:46 -0700 (PDT)
Message-ID: <844b0916a2198527090255a2b065bffda9084188.camel@gmail.com>
Subject: Local-variable initialization semantic patch update
From: Erick Karanja <karanja99erick@gmail.com>
To: outreachy@lists.linux.dev, Julia Lawall <Julia.Lawall@inria.fr>
Cc: Dan Carpenter <dan.carpenter@linaro.org>
Date: Mon, 07 Apr 2025 14:58:43 +0300
Content-Type: multipart/mixed; boundary="=-mrgJpLU+qF4EcXMuOLmW"
User-Agent: Evolution 3.52.3-0ubuntu1 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

--=-mrgJpLU+qF4EcXMuOLmW
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The original semantic patch had deficiencies in handling=20
local variable initialization, especially with function calls in
declarations.=20
This reduced readability, obscured side effects and made debugging
harder.

Suggested-by: Greg KH <gregkh@linuxfoundation.org>
Suggested-by: Julia Lawall <Julia.Lawall@inria.fr>
Suggested-by: Dan Carpenter <dan.carpenter@linaro.org>


--=-mrgJpLU+qF4EcXMuOLmW
Content-Disposition: attachment; filename="update_script.cocci"
Content-Transfer-Encoding: base64
Content-Type: text/plain; name="update_script.cocci"; charset="UTF-8"

QGluaXRpYWxpemU6b2NhbWxACkBACgpsZXQgYmlnY29kZSBwID0KICBsZXQgcCA9IExpc3QuaGQg
cCBpbgogIChwLkNvY2NpbGliLmxpbmUgPD4gcC5Db2NjaWxpYi5saW5lX2VuZCkgfHwKICAocC5D
b2NjaWxpYi5jb2xfZW5kIC0gcC5Db2NjaWxpYi5jb2wgPj0gNjApIAoKCkByMUAKdHlwZSBUOwpp
ZGVudGlmaWVyIHg7CnBvc2l0aW9uIHA7CkBACgpUQHAgeDsKCkBiYWRyMUAKdHlwZSBULFQyOwpp
ZGVudGlmaWVyIHIxLngseTsKc3RhdGVtZW50IFMxLFMyOwpwb3NpdGlvbiByMS5wOwpAQAoKVEBw
IHg7Ci4uLiB3aGVuICE9IFMxClQyIHk7Ci4uLiB3aGVuICE9IFMyCnggPSA8Ky4uLiB5IC4uLis+
OwoKQGJhZHIxYUAKdHlwZSBUOwpleHByZXNzaW9uIGUsZjsKaWRlbnRpZmllciByMS54OwpzdGF0
ZW1lbnQgUyxTMSxTMjsKcG9zaXRpb24gcjEucDsKYmluYXJ5IG9wZXJhdG9yIG9wOwpAQAoKVEBw
IHg7Ci4uLiB3aGVuICE9IFMKeCA9IGU7CmlmICg8Ky4uLlwoeCA9PSBOVUxMXHx4ICE9IE5VTExc
fHggb3AgMFx8ZiguLi4seCwuLi4pXCkuLi4rPikgUzEgZWxzZSBTMgoKQGJhZHIxYkAKdHlwZSBU
OwpleHByZXNzaW9uIGU7CmlkZW50aWZpZXIgcjEueDsKc3RhdGVtZW50IFM7CnBvc2l0aW9uIHIx
LnA7CnBvc2l0aW9uIHEgOiBzY3JpcHQ6b2NhbWwoKSB7IGJpZ2NvZGUgcSB9OwpAQAoKVEBwIHg7
Ci4uLiB3aGVuICE9IFMKeCA9IGVAcTsKCkBiYWRyX2Z1bmNfYXNzaWduQAp0eXBlIFQ7CmlkZW50
aWZpZXIgcjEueDsKcG9zaXRpb24gcjEucDsKaWRlbnRpZmllciBmOwpzdGF0ZW1lbnQgUzsKQEAK
ClRAcCB4OwouLi4gd2hlbiAhPSBTCnggPSBmKC4uLik7CgpAZGVwZW5kcyBvbiAhYmFkcjEgJiYg
IWJhZHIxYSAmJiAhYmFkcjFiICYmICFiYWRyX2Z1bmNfYXNzaWduQAp0eXBlIFQ7CmlkZW50aWZp
ZXIgcjEueDsKZXhwcmVzc2lvbiBlOwpzdGF0ZW1lbnQgUzsKcG9zaXRpb24gcjEucDsKQEAKClRA
cCB4CisgPSBlCiAgOwouLi4gd2hlbiAhPSBTCi0geCA9IGU7CgovLyAtLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KCkByMkAKdHlwZSBUOwppZGVudGlmaWVyIHg7CnBvc2l0aW9uIHA7CkBACgpU
QHAgeDsKCkBiYWRyMkAKdHlwZSBULFQyOwppZGVudGlmaWVyIHIyLngseTsKc3RhdGVtZW50IFMx
LFMyOwpwb3NpdGlvbiByMi5wOwpAQAoKVEBwIHg7Ci4uLiB3aGVuICE9IFMxClQyIHk7Ci4uLiB3
aGVuICE9IFMyCnggPSA8Ky4uLiB5IC4uLis+OwoKQGJhZHIyYUAKdHlwZSBUOwpleHByZXNzaW9u
IGUsZjsKaWRlbnRpZmllciByMi54OwpzdGF0ZW1lbnQgUyxTMSxTMjsKcG9zaXRpb24gcjIucDsK
YmluYXJ5IG9wZXJhdG9yIG9wOwpAQAoKVEBwIHg7Ci4uLiB3aGVuICE9IFMKeCA9IGU7CmlmICg8
Ky4uLlwoeCA9PSBOVUxMXHx4ICE9IE5VTExcfHggb3AgMFx8ZiguLi4seCwuLi4pXCkuLi4rPikg
UzEgZWxzZSBTMgoKQGJhZHIyYkAKdHlwZSBUOwpleHByZXNzaW9uIGU7CmlkZW50aWZpZXIgcjIu
eDsKc3RhdGVtZW50IFM7CnBvc2l0aW9uIHIyLnA7CnBvc2l0aW9uIHEgOiBzY3JpcHQ6b2NhbWwo
KSB7IGJpZ2NvZGUgcSB9OwpAQAoKVEBwIHg7Ci4uLiB3aGVuICE9IFMKeCA9IGVAcTsKCkBiYWRy
X2Z1bmNfYXNzaWduMkAKCnR5cGUgVDsKaWRlbnRpZmllciByMi54Owpwb3NpdGlvbiByMi5wOwpp
ZGVudGlmaWVyIGY7CnN0YXRlbWVudCBTOwpAQAoKVEBwIHg7Ci4uLiB3aGVuICE9IFMKeCA9IGYo
Li4uKTsKCkBkZXBlbmRzIG9uICFiYWRyMiAmJiAhYmFkcjJhICYmICFiYWRyMmIgJiYgIWJhZHJf
ZnVuY19hc3NpZ24yQAp0eXBlIFQ7CmlkZW50aWZpZXIgcjIueDsKZXhwcmVzc2lvbiBlOwpzdGF0
ZW1lbnQgUzsKcG9zaXRpb24gcjIucDsKQEAKClRAcCB4CisgPSBlCiAgOwouLi4gd2hlbiAhPSBT
Ci0geCA9IGU7CgovLyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCkByM0AKdHlwZSBUOwpp
ZGVudGlmaWVyIHg7CnBvc2l0aW9uIHA7CkBACgpUQHAgeDsKCkBiYWRyM0AKdHlwZSBULFQyOwpp
ZGVudGlmaWVyIHIzLngseTsKc3RhdGVtZW50IFMxLFMyOwpwb3NpdGlvbiByMy5wOwpAQAoKVEBw
IHg7Ci4uLiB3aGVuICE9IFMxClQyIHk7Ci4uLiB3aGVuICE9IFMyCnggPSA8Ky4uLiB5IC4uLis+
OwoKQGJhZHIzYUAKdHlwZSBUOwpleHByZXNzaW9uIGUsZjsKaWRlbnRpZmllciByMy54OwpzdGF0
ZW1lbnQgUyxTMSxTMjsKcG9zaXRpb24gcjMucDsKYmluYXJ5IG9wZXJhdG9yIG9wOwpAQAoKVEBw
IHg7Ci4uLiB3aGVuICE9IFMKeCA9IGU7CmlmICg8Ky4uLlwoeCA9PSBOVUxMXHx4ICE9IE5VTExc
fHggb3AgMFx8ZiguLi4seCwuLi4pXCkuLi4rPikgUzEgZWxzZSBTMgoKQGJhZHIzYkAKdHlwZSBU
OwpleHByZXNzaW9uIGU7CmlkZW50aWZpZXIgcjMueDsKc3RhdGVtZW50IFM7CnBvc2l0aW9uIHIz
LnA7CnBvc2l0aW9uIHEgOiBzY3JpcHQ6b2NhbWwoKSB7IGJpZ2NvZGUgcSB9OwpAQAoKVEBwIHg7
Ci4uLiB3aGVuICE9IFMKeCA9IGVAcTsKCkBiYWRyX2Z1bmNfYXNzaWduM0AKdHlwZSBUOwppZGVu
dGlmaWVyIHIzLng7CnBvc2l0aW9uIHIzLnA7CmlkZW50aWZpZXIgZjsKc3RhdGVtZW50IFM7CkBA
CgpUQHAgeDsKLi4uIHdoZW4gIT0gUwp4ID0gZiguLi4pOwoKQGRlcGVuZHMgb24gIWJhZHIzICYm
ICFiYWRyM2EgJiYgIWJhZHIzYiAmJiAhYmFkcl9mdW5jX2Fzc2lnbjNACnR5cGUgVDsKaWRlbnRp
ZmllciByMy54OwpleHByZXNzaW9uIGU7CnN0YXRlbWVudCBTOwpwb3NpdGlvbiByMy5wOwpAQAoK
VEBwIHgKKyA9IGUKICA7Ci4uLiB3aGVuICE9IFMKLSB4ID0gZTsKCg==


--=-mrgJpLU+qF4EcXMuOLmW--
