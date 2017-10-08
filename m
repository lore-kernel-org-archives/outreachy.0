X-GM-THRID: 6474404930917498880
X-Received: by 10.31.6.17 with SMTP id 17mr954979vkg.69.1507443047174;
        Sat, 07 Oct 2017 23:10:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.22.208 with SMTP id g16ls572176uaf.20.gmail; Sat, 07 Oct
 2017 23:10:46 -0700 (PDT)
X-Received: by 10.176.2.18 with SMTP id 18mr1306741uas.36.1507443046343;
        Sat, 07 Oct 2017 23:10:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507443046; cv=none;
        d=google.com; s=arc-20160816;
        b=RVm4fm4uGG7Gs7Z/xtCxdXU5PHhNSh4Sg4dK8vFKh/+tR8N6xWp1qpxdTPbLXgtNtc
         FCJioJZoPNcSHXsCBeWulSxtFqZzRIqjjupI5n3EkPMHL4YekyON+22YHBRB+Xoe8/pm
         HVRxLuUdpkAyAVRtmyaATnElwO8Bky4Wpt90rRnOxg2c5aiXoJeo+iyDtvoSpD72jB+F
         bu4XMCDAu3hnNAyDw3O6SS1+Ontj6LF0sYtA5uVIBHk6HoihrC0JFx+XDexV5B4qHJjy
         3CoMpV0roj6uGXo4oKh/AXqaYhDUAtC30hRziDAj45TObswLWUFukhPKz+or7ghLRIe+
         PW/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature
         :arc-authentication-results;
        bh=RXQ6ukhUTnohDwjieWgEiZWVTZf8mYcxZzNpK1WNxnY=;
        b=O9Wakl2pkLax3mkW6JeSPDl6s8TMMVo/OHIwSLWBCRI1W89LRwSFXbfEBJKavJl/vh
         zvyGbh6J0EcEPLOHizCy4EJIWf0JZS+BuPxVYv807+6k35PWVKTVllDJeRCRnFwyEgRq
         8s1H+ElmxaCZRkQHc+MS0T8TTEGbnbF/dvKomySJKkxnwwd9bGiBk0MGHH22OhH+mTgu
         tBaFlul9q9uztItkesZ+VRW0uMk0moi0ZI3QfRDpftNQuVGxHrDd2DMst6FVILypDhIv
         qadAX2CnegL+yKE9Jd+6bIxC2YFm3bM9MvNS3td2o1PEhTfm9cmB6Mkq/P2fgccJzLRu
         hZFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hv52YNDG;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-ua0-x244.google.com (mail-ua0-x244.google.com. [2607:f8b0:400c:c08::244])
        by gmr-mx.google.com with ESMTPS id n190si283060vkc.0.2017.10.07.23.10.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 23:10:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) client-ip=2607:f8b0:400c:c08::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hv52YNDG;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x244.google.com with SMTP id 103so4819324uas.0
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 23:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=RXQ6ukhUTnohDwjieWgEiZWVTZf8mYcxZzNpK1WNxnY=;
        b=hv52YNDGyS0UhMquU6/oFXXy4dgYdhFBjUCAqqEZsQsUJ6buYKDKX64ibr0IzuySdk
         xHaezdAcwM3CIqUtPFM3OcWRwfR0fOtTrUeyHbpcnPxXE2IgYXU0RBlP8mFjEZFKCx97
         w8ZsO728R1BlcOfrmcuwNZchLRTqT8hiIoWDDvUCSaDGaAEEmyJOAzTdtQ3V72N6nIZa
         0pqy74vLlIvnMzO7JvPcUV9lGeYDCVGqp95VbsxZhoCPs2n/bO7mxEf/shyD7nq5F98P
         27ygeZVnG0XygjxmyMO4c7qBSqCswqBc2O1IfxFwY3bq2NWB2olVmo979C4vY+V53ZU0
         Ogaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=RXQ6ukhUTnohDwjieWgEiZWVTZf8mYcxZzNpK1WNxnY=;
        b=A9FqB3vQK6f+UHK2xtlXv4k1BadaY9D05OSazyh1AA2H9h1mg9i0ufzfkDXZYTjtG+
         0koj6zxFXUWKKDgbQIb6o97Yq668Y0VWXYEJAV1BpUXnUyROOnGKy/L/uYAShcHxvqSz
         EvzTpS/WGWIEb5ek8st6fjC7iQjQmsGBr+ZNiXY5xjGQlD8r+jJzfpO/TnYyctbHylCO
         WJzryC7eigern26yxrUr4WJUsG9zPT4o4LcbZTcj3OJSoFJQXrxeJ2dUc7RK+2c/iYXv
         eVW8FgRgGtW8YlWOLAN9VIMgiypq1k1TqX+MREPoX1YfRa2VYzp1Yv8y5oUEN9yu2iVK
         UOYg==
X-Gm-Message-State: AMCzsaXGyEMifUc0aHXsYH5hKqYsyiF9SHbv7/suWr3cusaaUodTKZkY
	+WEsESyvIGcX6KPAbumoLhru4othY6HbwZZt/5/Al5kb
X-Google-Smtp-Source: AOwi7QDlgC232DuQfZN/MK/8KrmK7mku4Ei5Sx9qPsRItzEXqzGNN15rEkdButSYK436P6202P/+zJ9FTXXVcGS9+h0=
X-Received: by 10.176.82.36 with SMTP id i33mr3474267uaa.117.1507443045631;
 Sat, 07 Oct 2017 23:10:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.63.140 with HTTP; Sat, 7 Oct 2017 23:10:45 -0700 (PDT)
In-Reply-To: <F6958CE5-956F-4978-ACBA-A6EA4FF23191@intel.com>
References: <1507439859-20343-1-git-send-email-aastha.gupta4104@gmail.com> <F6958CE5-956F-4978-ACBA-A6EA4FF23191@intel.com>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Sun, 8 Oct 2017 11:40:45 +0530
Message-ID: <CAHXiS5_MZJT_fk7_N=e0R-fz7Mzx4s_zt+8pkY5xCKh7a5YaJQ@mail.gmail.com>
Subject: Re: [PATCH] staging: lustre: Replace list_for_each with list_for_each_entry
To: Oleg Drokin <oleg.drokin@intel.com>
Cc: outreachy-kernel@googlegroups.com, 
	Andreas Dilger <andreas.dilger@intel.com>, James Simmons <jsimmons@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 8, 2017 at 11:07 AM, Oleg Drokin <oleg.drokin@intel.com> wrote:
>
> On Oct 8, 2017, at 1:17 AM, Aastha Gupta wrote:
>
>> list_for_each is a macro that iterates over the elements of a list.
>> list_entry is a function that takes as argument a list pointer and
>> returns the structure that is pointed to.
>> list_for_each_entry is a macro that iterates over the structures in the
>> list, rather than exposing the list spine.
>>
>> Here the  list is only used for its entries,
>> and thus list_for_each_entry can be used instead of the
>> composition of list_for_each and list_entry.
>>
>> This patch is with the help of following Coccinelle script:
>
> Did you actually build-test it to make sure it builds?
> It appears to not be buildable.

It is weird that it perfectly compiled on my machine without any
errors/warnings.
I'll fix this and send you another patch. Thanks!
>
>>
>> @@
>> expression l, list;
>> type t1, t2;
>> identifier p, v;
>> iterator name list_for_each_entry, list_for_each;
>> @@
>>
>> - t1 *p;
>> ...when !=3D p
>> - list_for_each(p, l)
>> + list_for_each_entry(v, l, list)
>> {
>> ... when !=3D p
>> - v =3D list_entry(p, t2, list);
>> ... when !=3D p
>> }
>> ...when !=3D p
>>
>> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
>> ---
>> .../staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c    |  4 +--
>> .../staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c | 11 ++------
>> .../staging/lustre/lnet/klnds/socklnd/socklnd_cb.c | 20 +++-----------
>> drivers/staging/lustre/lnet/lnet/api-ni.c          | 31 +++++-----------=
------
>> drivers/staging/lustre/lnet/lnet/config.c          |  5 +---
>> drivers/staging/lustre/lnet/lnet/router.c          |  4 +--
>> drivers/staging/lustre/lustre/ldlm/ldlm_extent.c   |  5 +---
>> drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     |  5 +---
>> drivers/staging/lustre/lustre/ldlm/ldlm_resource.c |  5 +---
>> drivers/staging/lustre/lustre/obdclass/genops.c    |  4 +--
>> .../staging/lustre/lustre/obdecho/echo_client.c    |  4 +--
>> drivers/staging/lustre/lustre/ptlrpc/client.c      |  6 +----
>> 12 files changed, 21 insertions(+), 83 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drive=
rs/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
>> index 64763aa..cd81424 100644
>> --- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
>> +++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
>> @@ -384,11 +384,9 @@ struct kib_peer *kiblnd_find_peer_locked(lnet_nid_t=
 nid)
>>        * that this creates
>>        */
>>       struct list_head *peer_list =3D kiblnd_nid2peerlist(nid);
>> -     struct list_head *tmp;
>>       struct kib_peer *peer;
>>
>> -     list_for_each(tmp, peer_list) {
>> -             peer =3D list_entry(tmp, struct kib_peer, ibp_list);
>> +     list_for_each_entry(peer, peer_list, ibp_list) {
>>               LASSERT(!kiblnd_peer_idle(peer));
>>
>>               if (peer->ibp_nid !=3D nid)
>> diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c b/dr=
ivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
>> index 8fc191d..3106ffe 100644
>> --- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
>> +++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
>> @@ -3128,11 +3128,7 @@ static int
>> kiblnd_check_txs_locked(struct kib_conn *conn, struct list_head *txs)
>> {
>>       struct kib_tx *tx;
>> -     struct list_head *ttmp;
>> -
>> -     list_for_each(ttmp, txs) {
>> -             tx =3D list_entry(ttmp, struct kib_tx, tx_list);
>> -
>> +     list_for_each_entry(tx, txs, tx_list) {
>>               if (txs !=3D &conn->ibc_active_txs) {
>>                       LASSERT(tx->tx_queued);
>>               } else {
>> @@ -3167,7 +3163,6 @@ kiblnd_check_conns(int idx)
>>       LIST_HEAD(closes);
>>       LIST_HEAD(checksends);
>>       struct list_head *peers =3D &kiblnd_data.kib_peers[idx];
>> -     struct list_head *ptmp;
>>       struct kib_peer *peer;
>>       struct kib_conn *conn;
>>       struct kib_conn *temp;
>> @@ -3182,9 +3177,7 @@ kiblnd_check_conns(int idx)
>>        */
>>       read_lock_irqsave(&kiblnd_data.kib_global_lock, flags);
>>
>> -     list_for_each(ptmp, peers) {
>> -             peer =3D list_entry(ptmp, struct kib_peer, ibp_list);
>> -
>> +     list_for_each_entry(peer, peers, ibp_list) {
>>               list_for_each(ctmp, &peer->ibp_conns) {
>>                       int timedout;
>>                       int sendnoop;
>> diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c b/dr=
ivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
>> index 6b38d5a..4b1744d 100644
>> --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
>> +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
>> @@ -625,18 +625,16 @@ struct ksock_conn *
>> ksocknal_find_conn_locked(struct ksock_peer *peer, struct ksock_tx *tx,
>>                         int nonblk)
>> {
>> -     struct list_head *tmp;
>>       struct ksock_conn *conn;
>>       struct ksock_conn *typed =3D NULL;
>>       struct ksock_conn *fallback =3D NULL;
>>       int tnob =3D 0;
>>       int fnob =3D 0;
>>
>> -     list_for_each(tmp, &peer->ksnp_conns) {
>> +     list_for_each_entry(c, &peer->ksnp_conns, ksnc_list) {
>>               struct ksock_conn *c;
>
> This one looks like it would fail building because c is declared within t=
he loop,
> but used outside.
>
>>               int nob, rc;
>>
>> -             c =3D list_entry(tmp, struct ksock_conn, ksnc_list);
>>               nob =3D atomic_read(&c->ksnc_tx_nob) +
>>                     c->ksnc_sock->sk->sk_wmem_queued;
>>
>> @@ -793,12 +791,9 @@ struct ksock_route *
>> ksocknal_find_connectable_route_locked(struct ksock_peer *peer)
>> {
>>       unsigned long now =3D cfs_time_current();
>> -     struct list_head *tmp;
>>       struct ksock_route *route;
>>
>> -     list_for_each(tmp, &peer->ksnp_routes) {
>> -             route =3D list_entry(tmp, struct ksock_route, ksnr_list);
>> -
>> +     list_for_each_entry(route, &peer->ksnp_routes, ksnr_list) {
>>               LASSERT(!route->ksnr_connecting || route->ksnr_scheduled);
>>
>>               /* connections being established */
>> @@ -829,12 +824,9 @@ ksocknal_find_connectable_route_locked(struct ksock=
_peer *peer)
>> struct ksock_route *
>> ksocknal_find_connecting_route_locked(struct ksock_peer *peer)
>> {
>> -     struct list_head *tmp;
>>       struct ksock_route *route;
>>
>> -     list_for_each(tmp, &peer->ksnp_routes) {
>> -             route =3D list_entry(tmp, struct ksock_route, ksnr_list);
>> -
>> +     list_for_each_entry(route, &peer->ksnp_routes, ksnr_list) {
>>               LASSERT(!route->ksnr_connecting || route->ksnr_scheduled);
>>
>>               if (route->ksnr_scheduled)
>> @@ -2280,13 +2272,9 @@ ksocknal_find_timed_out_conn(struct ksock_peer *p=
eer)
>> {
>>       /* We're called with a shared lock on ksnd_global_lock */
>>       struct ksock_conn *conn;
>> -     struct list_head *ctmp;
>> -
>> -     list_for_each(ctmp, &peer->ksnp_conns) {
>> +     list_for_each_entry(conn, &peer->ksnp_conns, ksnc_list) {
>>               int error;
>>
>> -             conn =3D list_entry(ctmp, struct ksock_conn, ksnc_list);
>> -
>>               /* Don't need the {get,put}connsock dance to deref ksnc_so=
ck */
>>               LASSERT(!conn->ksnc_closing);
>>
>> diff --git a/drivers/staging/lustre/lnet/lnet/api-ni.c b/drivers/staging=
/lustre/lnet/lnet/api-ni.c
>> index ad83503..d1e68cf 100644
>> --- a/drivers/staging/lustre/lnet/lnet/api-ni.c
>> +++ b/drivers/staging/lustre/lnet/lnet/api-ni.c
>> @@ -269,12 +269,7 @@ static struct lnet_lnd *
>> lnet_find_lnd_by_type(__u32 type)
>> {
>>       struct lnet_lnd *lnd;
>> -     struct list_head *tmp;
>> -
>> -     /* holding lnd mutex */
>> -     list_for_each(tmp, &the_lnet.ln_lnds) {
>> -             lnd =3D list_entry(tmp, struct lnet_lnd, lnd_list);
>> -
>> +     list_for_each_entry(lnd, &the_lnet.ln_lnds, lnd_list) {
>>               if (lnd->lnd_type =3D=3D type)
>>                       return lnd;
>>       }
>> @@ -656,14 +651,11 @@ lnet_unprepare(void)
>> struct lnet_ni  *
>> lnet_net2ni_locked(__u32 net, int cpt)
>> {
>> -     struct list_head *tmp;
>>       struct lnet_ni *ni;
>>
>>       LASSERT(cpt !=3D LNET_LOCK_EX);
>>
>> -     list_for_each(tmp, &the_lnet.ln_nis) {
>> -             ni =3D list_entry(tmp, struct lnet_ni, ni_list);
>> -
>> +     list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
>>               if (LNET_NIDNET(ni->ni_nid) =3D=3D net) {
>>                       lnet_ni_addref_locked(ni, cpt);
>>                       return ni;
>> @@ -770,13 +762,10 @@ struct lnet_ni  *
>> lnet_nid2ni_locked(lnet_nid_t nid, int cpt)
>> {
>>       struct lnet_ni *ni;
>> -     struct list_head *tmp;
>>
>>       LASSERT(cpt !=3D LNET_LOCK_EX);
>>
>> -     list_for_each(tmp, &the_lnet.ln_nis) {
>> -             ni =3D list_entry(tmp, struct lnet_ni, ni_list);
>> -
>> +     list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
>>               if (ni->ni_nid =3D=3D nid) {
>>                       lnet_ni_addref_locked(ni, cpt);
>>                       return ni;
>> @@ -806,14 +795,11 @@ lnet_count_acceptor_nis(void)
>> {
>>       /* Return the # of NIs that need the acceptor. */
>>       int count =3D 0;
>> -     struct list_head *tmp;
>>       struct lnet_ni *ni;
>>       int cpt;
>>
>>       cpt =3D lnet_net_lock_current();
>> -     list_for_each(tmp, &the_lnet.ln_nis) {
>> -             ni =3D list_entry(tmp, struct lnet_ni, ni_list);
>> -
>> +     list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
>>               if (ni->ni_lnd->lnd_accept)
>>                       count++;
>>       }
>> @@ -1731,18 +1717,16 @@ static int
>> lnet_get_net_config(struct lnet_ioctl_config_data *config)
>> {
>>       struct lnet_ni *ni;
>> -     struct list_head *tmp;
>>       int idx =3D config->cfg_count;
>>       int cpt, i =3D 0;
>>       int rc =3D -ENOENT;
>>
>>       cpt =3D lnet_net_lock_current();
>>
>> -     list_for_each(tmp, &the_lnet.ln_nis) {
>> +     list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
>>               if (i++ !=3D idx)
>>                       continue;
>>
>> -             ni =3D list_entry(tmp, struct lnet_ni, ni_list);
>>               lnet_ni_lock(ni);
>>               lnet_fill_ni_info(ni, config);
>>               lnet_ni_unlock(ni);
>> @@ -2103,7 +2087,6 @@ int
>> LNetGetId(unsigned int index, struct lnet_process_id *id)
>> {
>>       struct lnet_ni *ni;
>> -     struct list_head *tmp;
>>       int cpt;
>>       int rc =3D -ENOENT;
>>
>> @@ -2111,12 +2094,10 @@ LNetGetId(unsigned int index, struct lnet_proces=
s_id *id)
>>
>>       cpt =3D lnet_net_lock_current();
>>
>> -     list_for_each(tmp, &the_lnet.ln_nis) {
>> +     list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
>>               if (index--)
>>                       continue;
>>
>> -             ni =3D list_entry(tmp, struct lnet_ni, ni_list);
>
> hm=E2=80=A6 I guess this one might be ok as is because we don;t need this=
 done on every
> iteration, but I guess it's ok either way.
>
>> -
>>               id->nid =3D ni->ni_nid;
>>               id->pid =3D the_lnet.ln_pid;
>>               rc =3D 0;
>> diff --git a/drivers/staging/lustre/lnet/lnet/config.c b/drivers/staging=
/lustre/lnet/lnet/config.c
>> index 26841a7..72bba89 100644
>> --- a/drivers/staging/lustre/lnet/lnet/config.c
>> +++ b/drivers/staging/lustre/lnet/lnet/config.c
>> @@ -78,12 +78,9 @@ lnet_issep(char c)
>> int
>> lnet_net_unique(__u32 net, struct list_head *nilist)
>> {
>> -     struct list_head *tmp;
>>       struct lnet_ni *ni;
>>
>> -     list_for_each(tmp, nilist) {
>> -             ni =3D list_entry(tmp, struct lnet_ni, ni_list);
>> -
>> +     list_for_each_entry(ni, nilist, ni_list) {
>>               if (LNET_NIDNET(ni->ni_nid) =3D=3D net)
>>                       return 0;
>>       }
>> diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging=
/lustre/lnet/lnet/router.c
>> index b8eba33..db8da95 100644
>> --- a/drivers/staging/lustre/lnet/lnet/router.c
>> +++ b/drivers/staging/lustre/lnet/lnet/router.c
>> @@ -294,7 +294,6 @@ int
>> lnet_add_route(__u32 net, __u32 hops, lnet_nid_t gateway,
>>              unsigned int priority)
>> {
>> -     struct list_head *e;
>>       struct lnet_remotenet *rnet;
>>       struct lnet_remotenet *rnet2;
>>       struct lnet_route *route;
>> @@ -363,10 +362,9 @@ lnet_add_route(__u32 net, __u32 hops, lnet_nid_t ga=
teway,
>>
>>       /* Search for a duplicate route (it's a NOOP if it is) */
>>       add_route =3D 1;
>> -     list_for_each(e, &rnet2->lrn_routes) {
>> +     list_for_each_entry(route2, &rnet2->lrn_routes, lr_list) {
>>               struct lnet_route *route2;
>
> Similarly here it would not really build because route2 is define inside =
the loop.
>
>> -             route2 =3D list_entry(e, struct lnet_route, lr_list);
>>               if (route2->lr_gateway =3D=3D route->lr_gateway) {
>>                       add_route =3D 0;
>>                       break;
>> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c b/drivers/=
staging/lustre/lustre/ldlm/ldlm_extent.c
>> index f9b4c0a..cefbfad 100644
>> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
>> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
>> @@ -63,7 +63,6 @@
>> __u64 ldlm_extent_shift_kms(struct ldlm_lock *lock, __u64 old_kms)
>> {
>>       struct ldlm_resource *res =3D lock->l_resource;
>> -     struct list_head *tmp;
>>       struct ldlm_lock *lck;
>>       __u64 kms =3D 0;
>>
>> @@ -73,9 +72,7 @@ __u64 ldlm_extent_shift_kms(struct ldlm_lock *lock, __=
u64 old_kms)
>>        */
>>       ldlm_set_kms_ignore(lock);
>>
>> -     list_for_each(tmp, &res->lr_granted) {
>> -             lck =3D list_entry(tmp, struct ldlm_lock, l_res_link);
>> -
>> +     list_for_each_entry(lck, &res->lr_granted, l_res_link) {
>>               if (ldlm_is_kms_ignore(lck))
>>                       continue;
>>
>> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c b/drivers/st=
aging/lustre/lustre/ldlm/ldlm_lock.c
>> index adfc0b4..e23cdec 100644
>> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
>> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
>> @@ -885,12 +885,9 @@ static void search_granted_lock(struct list_head *q=
ueue,
>>                               struct ldlm_lock *req,
>>                               struct sl_insert_point *prev)
>> {
>> -     struct list_head *tmp;
>>       struct ldlm_lock *lock, *mode_end, *policy_end;
>>
>> -     list_for_each(tmp, queue) {
>> -             lock =3D list_entry(tmp, struct ldlm_lock, l_res_link);
>> -
>> +     list_for_each_entry(lock, queue, l_res_link) {
>>               mode_end =3D list_prev_entry(lock, l_sl_mode);
>>
>>               if (lock->l_req_mode !=3D req->l_req_mode) {
>> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c b/driver=
s/staging/lustre/lustre/ldlm/ldlm_resource.c
>> index c374f14..503e4a6 100644
>> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
>> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
>> @@ -1282,17 +1282,14 @@ void ldlm_res2desc(struct ldlm_resource *res, st=
ruct ldlm_resource_desc *desc)
>>  */
>> void ldlm_dump_all_namespaces(enum ldlm_side client, int level)
>> {
>> -     struct list_head *tmp;
>> -
>>       if (!((libcfs_debug | D_ERROR) & level))
>>               return;
>>
>>       mutex_lock(ldlm_namespace_lock(client));
>>
>> -     list_for_each(tmp, ldlm_namespace_list(client)) {
>> +     list_for_each_entry(ns, ldlm_namespace_list(client), ns_list_chain=
) {
>>               struct ldlm_namespace *ns;
>
> and here.
>
>>
>> -             ns =3D list_entry(tmp, struct ldlm_namespace, ns_list_chai=
n);
>>               ldlm_namespace_dump(level, ns);
>>       }
>>
>> diff --git a/drivers/staging/lustre/lustre/obdclass/genops.c b/drivers/s=
taging/lustre/lustre/obdclass/genops.c
>> index 739bfb9..6d93d9c 100644
>> --- a/drivers/staging/lustre/lustre/obdclass/genops.c
>> +++ b/drivers/staging/lustre/lustre/obdclass/genops.c
>> @@ -86,12 +86,10 @@ static void obd_device_free(struct obd_device *obd)
>>
>> static struct obd_type *class_search_type(const char *name)
>> {
>> -     struct list_head *tmp;
>>       struct obd_type *type;
>>
>>       spin_lock(&obd_types_lock);
>> -     list_for_each(tmp, &obd_types) {
>> -             type =3D list_entry(tmp, struct obd_type, typ_chain);
>> +     list_for_each_entry(type, &obd_types, typ_chain) {
>>               if (strcmp(type->typ_name, name) =3D=3D 0) {
>>                       spin_unlock(&obd_types_lock);
>>                       return type;
>> diff --git a/drivers/staging/lustre/lustre/obdecho/echo_client.c b/drive=
rs/staging/lustre/lustre/obdecho/echo_client.c
>> index f9808d1..172037c 100644
>> --- a/drivers/staging/lustre/lustre/obdecho/echo_client.c
>> +++ b/drivers/staging/lustre/lustre/obdecho/echo_client.c
>> @@ -949,12 +949,10 @@ static int cl_echo_cancel0(struct lu_env *env, str=
uct echo_device *ed,
>> {
>>       struct echo_client_obd *ec =3D ed->ed_ec;
>>       struct echo_lock       *ecl =3D NULL;
>> -     struct list_head             *el;
>>       int found =3D 0, still_used =3D 0;
>>
>>       spin_lock(&ec->ec_lock);
>> -     list_for_each(el, &ec->ec_locks) {
>> -             ecl =3D list_entry(el, struct echo_lock, el_chain);
>> +     list_for_each_entry(ecl, &ec->ec_locks, el_chain) {
>>               CDEBUG(D_INFO, "ecl: %p, cookie: %#llx\n", ecl, ecl->el_co=
okie);
>>               found =3D (ecl->el_cookie =3D=3D cookie);
>>               if (found) {
>> diff --git a/drivers/staging/lustre/lustre/ptlrpc/client.c b/drivers/sta=
ging/lustre/lustre/ptlrpc/client.c
>> index b1d379a..291b9ff 100644
>> --- a/drivers/staging/lustre/lustre/ptlrpc/client.c
>> +++ b/drivers/staging/lustre/lustre/ptlrpc/client.c
>> @@ -2202,16 +2202,12 @@ static void ptlrpc_interrupted_set(void *data)
>>  */
>> int ptlrpc_set_next_timeout(struct ptlrpc_request_set *set)
>> {
>> -     struct list_head *tmp;
>>       time64_t now =3D ktime_get_real_seconds();
>>       int timeout =3D 0;
>>       struct ptlrpc_request *req;
>>       time64_t deadline;
>>
>> -     list_for_each(tmp, &set->set_requests) {
>> -             req =3D list_entry(tmp, struct ptlrpc_request, rq_set_chai=
n);
>> -
>> -             /* Request in-flight? */
>> +     list_for_each_entry(req, &set->set_requests, rq_set_chain) {
>>               if (!(((req->rq_phase =3D=3D RQ_PHASE_RPC) && !req->rq_wai=
ting) ||
>>                     (req->rq_phase =3D=3D RQ_PHASE_BULK) ||
>>                     (req->rq_phase =3D=3D RQ_PHASE_NEW)))
>> --
>> 2.7.4
>

