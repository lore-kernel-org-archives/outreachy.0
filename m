Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.218.50
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792855945;
	b=mGRPTU++KXUtgU6qrLpZE4+5QB7vYI4ErYq0tDnRK7O/vFZI/xlLxTqdKPVObfsqShUm
	 sip8/r/NjTBhvs03zX6xUiLwRD8rIYWefWiOKJf9w4mMsnXrsLLbmZ3u7ClhxDT433WYV
	 E+SZOtJcn3AA747QUrfvdy/yGNONZe+IBKOyc9XDRk0xNuxHgTmMWY87FnSlr7vhzr3Xa
	 8ZvznPUCDxSNCv5qI7uxKFeLgAW3ZYtwPET5i9Gy8f8iGQwCOFc75ms1x7U8xBQwgXTRD
	 tkOFIY4dP88UrCe7qdJN11F2FsbMBe2p83BzaeCqsrDna+Lh17/W5+boeiklA2y09Xg==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792855945;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:
	 MIME-Version:From:Date:X-Gm-Features:Message-ID:Subject:To:Cc:
	 Content-Type;
	bh=Pq5TTBQpf3VwcXoGs4pN0FqJDNE4MP0bsbNANOOcrSQ=;
	b=lbiOazRflFa3kjnDJv+YSvfymDstyLNmvp+PLGCJ3+1VztIb3yAxTDyS8ZjVAnre+7st
	 Wduqzmoshfmp4yC0DlhqaAX8is2q/c7u7bDe6SuUbl+jhXmqHcvSaWXihw9EqyDKYiR2G
	 e0C5he69aE6wDNoEJUnGKFBzHITJcBrNlqyL3C3n8BwLI04rDTndUT+VrQNjCu9Bh5FZc
	 sXhW+GFYUcxALdmnTZu3WB4Y7dBwagf8hcTB/gs1V3oxbVzVTEqcsjui0mdHdFqjGBOYK
	 Uqbe1pq88IxDc79s+pJ3HsS7jOQs+qkq503ZvC9Rr8v2lkHYm4NH34GVaPmrherbSGQ==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=LqcKfIbf;
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.218.50
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424F0606A31E
	for <outreachy@lists.linux.dev>; Sat, 24 Oct 2026 15:32:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 424F0606A31E
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=LqcKfIbf
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-c2e8c710847so216786466b.0
        for <outreachy@lists.linux.dev>; Sat, 24 Oct 2026 08:32:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792855943; cv=none;
        d=google.com; s=arc-20260327;
        b=YXqL1sTHMmR8F+Xlg6aGffR74xpUKyy3d+Mw5+xwZp0ibJtWMNz9zr7YE7ZaBguK3t
         pJN3ZIb0e+MvY6ok/2j8W1QEgq+hcLNRbd5E2jVBmugnTmuXmSB88nA34ghv1aoRKdsP
         qClr3AcQRY2RRrWCZtq5URqzbvc/4ydmDD0TAMU6Cnq4WrL/Id9DUjfaJ3m2b9e/UeQr
         CEeCKaG5yolf4TT68i/0dwhaIrC2ubwPopjNxdtPMnVaETV8yPCPlFxE7eWWtB5bCqmO
         A3aDBrzhzDoy+CtHBQJfjrS+cUEJwUum1bKrrPmhb/8QgEibnZQ4K6PzL/aOtSoKqh6m
         kHgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Pq5TTBQpf3VwcXoGs4pN0FqJDNE4MP0bsbNANOOcrSQ=;
        fh=BDBbtJIVgMNYwWZduy03R2MmNLXhjnnhmcxflH2Iqb0=;
        b=Y3Hetp7c9V31KukIW+FbPuVWFoGRYPM2/KoRjTzSeJ1IN8wijosDCUQLRRZeBn/wMk
         PAjXxo6mE1yLhFQRVzl0yxtEcnVE0EH1TCpv7zJKrltQmof6z/6kXt4XvFsnYm2NqtD8
         636sTX+Y1+ecZLfGaKZo7D+fefcX/znVlL2NhZnTYmsGxLIoPTq//RQ7jAzelXo3zB/g
         l+eVAJajQDv7qICuW85lGieLdJWmdXlmYxLyE0JFcKJdsqjGDlMkrD/ssST6pZ0V7NbE
         f+nBoWklWNQCXjEZ2blFExqA+EjCbamNQYRly9XUE9nJDI1ehLKgWwae6k/xLjw0DIn6
         FnAw==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792855943; x=1793460743; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Pq5TTBQpf3VwcXoGs4pN0FqJDNE4MP0bsbNANOOcrSQ=;
        b=LqcKfIbfr2bYJGzWJ6A3QaxZes24GxQtE+8s11/J2Qq/HyeGl2Ri0pYdyRk3Nre6HR
         1L2EDYaa4d2k/GBDXluHaiX/7xqj1LVNJhF/RYD6XDCA0yq0xJxLjRn5IuIZs6KeYtyl
         b4bxXUy7apoiIO4EVd2Yv0ayND1KRQdszswYU2WI7ZZnYLZOgHZorxdy8In/Dco/8amJ
         +t7hvj+41NWwN2Mc81qS/ypAIAaORAJURatFDAVQMruHv9NipT3frDwUNY0IJkE/JIk4
         ut/JG9XQXIbDjAjT59Lx/biF2WHHC7c8oyGV3GZ75Fz4R3vXEkgyt/nm+1I03cyqw1iQ
         eRYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792855943; x=1793460743;
        h=content-type:cc:to:subject:message-id:date:from:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Pq5TTBQpf3VwcXoGs4pN0FqJDNE4MP0bsbNANOOcrSQ=;
        b=M/Q1AKS/CfRrPLAfvfIOedZXtPjm2WkHUVpNGXsDNRXkIZrXKLY1+X4RMqiujYgN0V
         GMCaRpAaeue8ORNneOtFeoMyguzZV7dW2v2bcM2qrlpU2qV9NZlUnyLyyu+u48P8pzEE
         /DNWe+WJ23j713+FZKOFBl6XpP8ldtA8Kq0ahJbpevSYGTuThSE2+cIudZ+pJYMBiyqs
         SoCpr3xB4oJhKHJigxqAELedRv8vG4T/vbvR0tPPcvRLwpvKrXjVmOxSVl6mux+bT1t0
         /NHa3LRKIS6Xj6YWIG3fX6dlKO8/ukAnLJAqq3P3sz1BSLIYbMOocWb94ovDHaJKm48G
         PD6g==
X-Forwarded-Encrypted: i=1; AKwUvByLKUuPe1fLFQWHUYm+6F+9g7dzus0NJqm6IlegSy5xq4HF3NRGF4lhXmSuTiIGdevd4vnaZZ2vnaA=@lists.linux.dev
X-Gm-Message-State: AFq9FYIKLPrSgTO6tVwpL/T47Vwoxo/L/3YKkq55j+nLGTxvOgPpaogN
	X/0QoX7vguKA8UQbXsYS0HNf77eOM/3HkunkF5VwvbfecnOtBKE+Qagx2sl87i+ckl0dGP/PWkZ
	PxxtsFgqLUpk6Tf2nbdai5FXicm+BaOg=
X-Gm-Gg: AYBFou0QagPtUiCVOo0kkNPM7zU+9cUYzjEf2jzZMm/S0EsW0THVQ+9B+tDMUkNNwzl
	yPZ4FJCtinCd4n2k7ZXzdCpkSLA2VQZVvq76F3PPewVHsEDz3StXWNUOmG4h8ia/lP9ShaoHdAw
	23gKl2obxlCSXxdn5QeCvx1z5mb6ek5oc3h+WXcz6iMTpRWxftjL6HnNud0ZLTwlEFE6CdpMpjt
	z1odGsZbjWbHV6fsUNeoX+zNhbl+v0m0jbLeMXT9TW3eYQNHrvoOaLv/uzOOebx9E1FwG2nzbOa
	eJv82FoJGPHfioSonZJ3TVSdBN5+ZPGG363/uXd/KF9S8ycVnTsNlwuRscObDiKv9OIelZkOzi+
	coU0U5CTym6tZyIn8ebW7o9UEGtVEKKa5mmQQbacIduW44PlLYLkoCNj0Ckp+JclZfnV1u56wyY
	vvVgO4Y3XVqY+Cqpg=
X-Received: by 2002:a17:907:930a:b0:c40:4965:72cb with SMTP id
 a640c23a62f3a-c46bde1c9acmr252909566b.21.1792855943476; Sat, 24 Oct 2026
 08:32:23 -0700 (PDT)
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
From: Abubakar Musa Samaila <abubakarmusasamaila@gmail.com>
Date: Sat, 24 Oct 2026 16:32:11 +0100
X-Gm-Features: AclHuK9TU3AwsoiPULkfHVkczTh8p5LJGwDjkZKuc4re9S6dugKLiYK4K0vrngU
Message-ID: <CAHxSwT8=ZA2sFqXNjfX2=Bf369+gNRLfCO+VtVmmWiTzenLwWQ@mail.gmail.com>
Subject: staging: fbtft: fb_upd161704: Replace udelay() with usleep_range()
To: andy@kernel.org, gregkh@linuxfoundation.org, outreachy@lists.linux.dev
Cc: linux-staging@lists.linux.dev, linux-fbdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="000000000000a53d1b065e97cd84"

--000000000000a53d1b065e97cd84
Content-Type: text/plain; charset="UTF-8"

Hi Andy and Greg,

Please find attached the patch that replaces non-atomic udelay()
instances with appropriate usleep_range() bounds in
drivers/staging/fbtft/fb_upd161704.c.

Thanks,

Abubakar Musa Samaila

--000000000000a53d1b065e97cd84
Content-Type: application/octet-stream; 
	name="0001-staging-fbtft-fb_upd161704-Replace-udelay-with-uslee.patch"
Content-Disposition: attachment; 
	filename="0001-staging-fbtft-fb_upd161704-Replace-udelay-with-uslee.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_mvmk3skb0>
X-Attachment-Id: f_mvmk3skb0

RnJvbSA3NzgwMzBhYTkyOTFlM2E3ZDQwZmZiMDNiMTllNjg3NzA0MWNkZGM4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBBYnViYWthciBNdXNhIFNhbWFpbGEgPGFidWJha2FybXVzYXNh
bWFpbGFAZ21haWwuY29tPgpEYXRlOiBTYXQsIDI0IE9jdCAyMDI2IDEyOjAyOjI1ICswMTAwClN1
YmplY3Q6IFtQQVRDSF0gc3RhZ2luZzogZmJ0ZnQ6IGZiX3VwZDE2MTcwNDogUmVwbGFjZSB1ZGVs
YXkoKSB3aXRoCiB1c2xlZXBfcmFuZ2UoKQoKU2lnbmVkLW9mZi1ieTogQWJ1YmFrYXIgTXVzYSBT
YW1haWxhIDxhYnViYWthcm11c2FzYW1haWxhQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdp
bmcvZmJ0ZnQvZmJfdXBkMTYxNzA0LmMgfCAxOCArKysrKysrKystLS0tLS0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9zdGFnaW5nL2ZidGZ0L2ZiX3VwZDE2MTcwNC5jIGIvZHJpdmVycy9zdGFnaW5nL2ZidGZ0
L2ZiX3VwZDE2MTcwNC5jCmluZGV4IDcyODgxNDBlNy4uOTRhZTViYmYwIDEwMDY0NAotLS0gYS9k
cml2ZXJzL3N0YWdpbmcvZmJ0ZnQvZmJfdXBkMTYxNzA0LmMKKysrIGIvZHJpdmVycy9zdGFnaW5n
L2ZidGZ0L2ZiX3VwZDE2MTcwNC5jCkBAIC0zMiwyNyArMzIsMjcgQEAgc3RhdGljIGludCBpbml0
X2Rpc3BsYXkoc3RydWN0IGZidGZ0X3BhciAqcGFyKQogCiAJLyogb3NjaWxsYXRvciBzdGFydCAq
LwogCXdyaXRlX3JlZyhwYXIsIDB4MDAzQSwgMHgwMDAxKTsJLypPc2NpbGxhdG9yIDA6IHN0b3As
IDE6IG9wZXJhdGlvbiAqLwotCXVkZWxheSgxMDApOworCXVzbGVlcF9yYW5nZSgxMDAsIDE1MCk7
CiAKIAkvKiB5LXNldHRpbmcgKi8KIAl3cml0ZV9yZWcocGFyLCAweDAwMjQsIDB4MDA3Qik7CS8q
IGFtcGxpdHVkZSBzZXR0aW5nICovCi0JdWRlbGF5KDEwKTsKKwl1c2xlZXBfcmFuZ2UoMTAsIDIw
KTsKIAl3cml0ZV9yZWcocGFyLCAweDAwMjUsIDB4MDAzQik7CS8qIGFtcGxpdHVkZSBzZXR0aW5n
ICovCiAJd3JpdGVfcmVnKHBhciwgMHgwMDI2LCAweDAwMzQpOwkvKiBhbXBsaXR1ZGUgc2V0dGlu
ZyAqLwotCXVkZWxheSgxMCk7CisJdXNsZWVwX3JhbmdlKDEwLCAyMCk7CiAJd3JpdGVfcmVnKHBh
ciwgMHgwMDI3LCAweDAwMDQpOwkvKiBhbXBsaXR1ZGUgc2V0dGluZyAqLwogCXdyaXRlX3JlZyhw
YXIsIDB4MDA1MiwgMHgwMDI1KTsJLyogY2lyY3VpdCBzZXR0aW5nIDEgKi8KLQl1ZGVsYXkoMTAp
OworCXVzbGVlcF9yYW5nZSgxMCwgMjApOwogCXdyaXRlX3JlZyhwYXIsIDB4MDA1MywgMHgwMDMz
KTsJLyogY2lyY3VpdCBzZXR0aW5nIDIgKi8KIAl3cml0ZV9yZWcocGFyLCAweDAwNjEsIDB4MDAx
Qyk7CS8qIGFkanVzdG1lbnQgVjEwIHBvc2l0aXZlIHBvbGFyaXR5ICovCi0JdWRlbGF5KDEwKTsK
Kwl1c2xlZXBfcmFuZ2UoMTAsIDIwKTsKIAl3cml0ZV9yZWcocGFyLCAweDAwNjIsIDB4MDAyQyk7
CS8qIGFkanVzdG1lbnQgVjkgbmVnYXRpdmUgcG9sYXJpdHkgKi8KIAl3cml0ZV9yZWcocGFyLCAw
eDAwNjMsIDB4MDAyMik7CS8qIGFkanVzdG1lbnQgVjM0IHBvc2l0aXZlIHBvbGFyaXR5ICovCi0J
dWRlbGF5KDEwKTsKKwl1c2xlZXBfcmFuZ2UoMTAsIDIwKTsKIAl3cml0ZV9yZWcocGFyLCAweDAw
NjQsIDB4MDAyNyk7CS8qIGFkanVzdG1lbnQgVjMxIG5lZ2F0aXZlIHBvbGFyaXR5ICovCi0JdWRl
bGF5KDEwKTsKKwl1c2xlZXBfcmFuZ2UoMTAsIDIwKTsKIAl3cml0ZV9yZWcocGFyLCAweDAwNjUs
IDB4MDAxNCk7CS8qIGFkanVzdG1lbnQgVjYxIG5lZ2F0aXZlIHBvbGFyaXR5ICovCi0JdWRlbGF5
KDEwKTsKKwl1c2xlZXBfcmFuZ2UoMTAsIDIwKTsKIAl3cml0ZV9yZWcocGFyLCAweDAwNjYsIDB4
MDAxMCk7CS8qIGFkanVzdG1lbnQgVjYxIG5lZ2F0aXZlIHBvbGFyaXR5ICovCiAKIAkvKiBCYXNp
Y2FsIGNsb2NrIGZvciAxIGxpbmUgKEJBU0VDT1VOVFs3OjBdKSBudW1iZXIgc3BlY2lmaWVkICov
CkBAIC02MCw3ICs2MCw3IEBAIHN0YXRpYyBpbnQgaW5pdF9kaXNwbGF5KHN0cnVjdCBmYnRmdF9w
YXIgKnBhcikKIAogCS8qIFBvd2VyIHN1cHBseSBzZXR0aW5nICovCiAJd3JpdGVfcmVnKHBhciwg
MHgwMDE5LCAweDAwMDApOwkvKiBEQy9EQyBvdXRwdXQgc2V0dGluZyAqLwotCXVkZWxheSgyMDAp
OworCXVzbGVlcF9yYW5nZSgyMDAsIDI1MCk7CiAJd3JpdGVfcmVnKHBhciwgMHgwMDFBLCAweDEw
MDApOwkvKiBEQy9EQyBmcmVxdWVuY3kgc2V0dGluZyAqLwogCXdyaXRlX3JlZyhwYXIsIDB4MDAx
QiwgMHgwMDIzKTsJLyogREMvREMgcmlzaW5nIHNldHRpbmcgKi8KIAl3cml0ZV9yZWcocGFyLCAw
eDAwMUMsIDB4MEMwMSk7CS8qIFJlZ3VsYXRvciB2b2x0YWdlIHNldHRpbmcgKi8KLS0gCjIuMzQu
MQoK
--000000000000a53d1b065e97cd84--
