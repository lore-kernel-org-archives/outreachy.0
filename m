X-GM-THRID: 6474404930917498880
X-Received: by 10.129.147.131 with SMTP id k125mr1644701ywg.157.1508350796088;
        Wed, 18 Oct 2017 11:19:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.132.67 with SMTP id u64ls393345ywf.32.gmail; Wed, 18 Oct
 2017 11:19:55 -0700 (PDT)
X-Received: by 10.13.237.197 with SMTP id w188mr1792210ywe.2.1508350795294;
        Wed, 18 Oct 2017 11:19:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508350795; cv=none;
        d=google.com; s=arc-20160816;
        b=DSiBTrs1FTAWn2rpsm+PFZWVw7kJTXjOqFclzRXqnN8UwabzBU1YHVSt+eLrYB07cB
         JIG4WnxkUykA5jB+HCSXzSVDTSPksGjuTeV3ZYl5TQHQOxXIYjH0FbuK1FgEyUEHsl0+
         4XIHYJqzmiPOBHY8/HriEzM/0nCO1Q8VAgkhRfCBA9yzVm/gvF9dtv0YQ/fb623nEOhJ
         EY979r1tw5r9tKItBbErrFi3Tfjo9rOaztkJNTr92g18lp1CdFnlDLX08EOTCaFE1DY+
         S3kI4rmlyxdNJeR2wdO9gdCK6kFMrdUUoCdbbyHb9nyPIGDT7TuHpzMKlqf92T+pQU9N
         AFhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=yUwEq+dlKWzsSRqyHNb7ZgKCPXIy/AlrYWcZ8jCoLFc=;
        b=WqQ9TQeoD0lFNue4qZcNGZfSd3VFRlhIqrGcYvrMDoRp7wFVo+HE8eYBWnp+Pg9Mtf
         pjzxGo7JHQHHdqsooNscBDhHYDH01pY+ClFWRNYopS7+Dnwzf5x8wGhaDo+vYBAgfA8g
         v9VKchO0uKZ/FAT/zjUTziZj+ScdnW1F4bBIsPyZumxGsOTP9c48NuNL4sqeQmZ11/t3
         9Wxi4vVa3qK5A4xN21b42249g7XaTnhFPHoERocVTue9xPyKmfmQfExYPIptSPMTmPn6
         ihg8PV1GalO4FFOLY73flnxgsfL+cyz3pR4s57ABoBnEzkkZfWDKBRmNjgo/0F5+uKlU
         sJxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nEtqZCL/;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id k5si832024ywe.1.2017.10.18.11.19.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 11:19:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nEtqZCL/;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id j2so3875852vki.4
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 11:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=yUwEq+dlKWzsSRqyHNb7ZgKCPXIy/AlrYWcZ8jCoLFc=;
        b=nEtqZCL/k25ABsRIGhImJ+p5cJXtN0sPyKIpt9G5OIOVlDPPsxKBqRrgrm+080DYvd
         rKy6tWxIEbKlNIFb/Wj0irmSguMtIcq9iAkCtUOiCZuOrzH23GBAOQqNuFw126wsn+kI
         Y9q6JfWevat0DaqSj4FnS9kjAVVU9BIGZmHZWHk8XD7oUIaHBS7DTN2XUxR81P+p9dZz
         LHx74ROmiyBb4ZshFDxUeAzou3q314yC2kb3ghrhmBjw0o9FLHWsMd2vmuREyD20xACc
         oyQ+hEhvAFpy5o7+9+G6JbXuf1iHaKRttSs+ynJ3iwGD30zyLlUN6mFoliApYaq1s5HE
         h67w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=yUwEq+dlKWzsSRqyHNb7ZgKCPXIy/AlrYWcZ8jCoLFc=;
        b=PNfGJ6J0ZpWU5vSUhsZQz06yED3MBMUK/qBYqZZAKC+8lPl82874zMv379MvpvhyqB
         HYGQUvjLIM/NrhLxVqOJAX5lwdP1YJxpkj74yJ28KnmZbDxgjpGVBO7oGF/JHDFYvSlo
         2Hwspz47SYCnJSUxuLxz1882lGEupFGKibgmlVd+w+TK93PIZnbYhXTpnA/QEYUqPrI2
         djf1pVwcTZXBQoCQ0LGc8F2F27ckezz2oA4iHZgG1nk4Vl9hCD121SKtYQ6PEvrVpDt0
         Uk7nv6GuRX854XR4XLXsDBbufL7XSBvRJH+PiHj4XbVTC1PTeh0huCVaL2lWgAlwA85l
         WPRQ==
X-Gm-Message-State: AMCzsaVwSg7D9dtu01HUEyNVC3RbyBf411dgS5Rk0B/OcLcKTW8iIbFT
	w86GRIpTZxHtutjwXt4F3bbChBi2X6WKVLj+SLVkfVNX
X-Google-Smtp-Source: ABhQp+S/3TdPR/CCwmDP/2Ug6J5snet4Cq9h6b9LwjHt9vhWFR5cDabMbpVWxbvkLruZwkgylYw3fvcRKbvK0ubfy5k=
X-Received: by 10.31.59.73 with SMTP id i70mr5997505vka.87.1508350794326; Wed,
 18 Oct 2017 11:19:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.63.140 with HTTP; Wed, 18 Oct 2017 11:19:53 -0700 (PDT)
In-Reply-To: <1507472013-23716-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507472013-23716-1-git-send-email-aastha.gupta4104@gmail.com>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Wed, 18 Oct 2017 23:49:53 +0530
Message-ID: <CAHXiS59c=NmxKR2x_0Hv4HfhcFOSmnti=fkyqxEqaNUz0knsNQ@mail.gmail.com>
Subject: Re: [PATCH v2] staging: lustre: Replace list_for_each with list_for_each_entry
To: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>, 
	Andreas Dilger <andreas.dilger@intel.com>, James Simmons <jsimmons@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Sun, Oct 8, 2017 at 7:43 PM, Aastha Gupta <aastha.gupta4104@gmail.com> wrote:
> list_for_each is a macro that iterates over the elements of a list.
> list_entry is a function that takes as argument a list pointer and
> returns the structure that is pointed to.
> list_for_each_entry is a macro that iterates over the structures in the
> list, rather than exposing the list spine.
>
> Here the  list is only used for its entries,
> and thus list_for_each_entry can be used instead of the
> composition of list_for_each and list_entry.
>
> This patch is with the help of following Coccinelle script:
>
> @@
> expression l, list;
> type t1, t2;
> identifier p, v;
> iterator name list_for_each_entry, list_for_each;
> @@
>
> - t1 *p;
> ...when != p
> - list_for_each(p, l)
> + list_for_each_entry(v, l, list)
> {
> ... when != p
>     when != v
>     when != t2 *v;
> - v = list_entry(p, t2, list);
> ... when != p
> }
> ...when != p
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
> Changes in v2:
>         - changed coccinelle script
>
>  .../staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c    |  4 +--
>  .../staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c | 11 ++------
>  .../staging/lustre/lnet/klnds/socklnd/socklnd_cb.c | 16 +++--------
>  drivers/staging/lustre/lnet/lnet/api-ni.c          | 31 +++++-----------------
>  drivers/staging/lustre/lnet/lnet/config.c          |  5 +---
>  drivers/staging/lustre/lustre/ldlm/ldlm_extent.c   |  5 +---
>  drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     |  5 +---
>  drivers/staging/lustre/lustre/obdclass/genops.c    |  4 +--
>  .../staging/lustre/lustre/obdecho/echo_client.c    |  4 +--
>  drivers/staging/lustre/lustre/ptlrpc/client.c      |  6 +----
>  10 files changed, 18 insertions(+), 73 deletions(-)
>
> diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> index 64763aa..cd81424 100644
> --- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> +++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> @@ -384,11 +384,9 @@ struct kib_peer *kiblnd_find_peer_locked(lnet_nid_t nid)
>          * that this creates
>          */
>         struct list_head *peer_list = kiblnd_nid2peerlist(nid);
> -       struct list_head *tmp;
>         struct kib_peer *peer;
>
> -       list_for_each(tmp, peer_list) {
> -               peer = list_entry(tmp, struct kib_peer, ibp_list);
> +       list_for_each_entry(peer, peer_list, ibp_list) {
>                 LASSERT(!kiblnd_peer_idle(peer));
>
>                 if (peer->ibp_nid != nid)
> diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
> index 8fc191d..3106ffe 100644
> --- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
> +++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
> @@ -3128,11 +3128,7 @@ static int
>  kiblnd_check_txs_locked(struct kib_conn *conn, struct list_head *txs)
>  {
>         struct kib_tx *tx;
> -       struct list_head *ttmp;
> -
> -       list_for_each(ttmp, txs) {
> -               tx = list_entry(ttmp, struct kib_tx, tx_list);
> -
> +       list_for_each_entry(tx, txs, tx_list) {
>                 if (txs != &conn->ibc_active_txs) {
>                         LASSERT(tx->tx_queued);
>                 } else {
> @@ -3167,7 +3163,6 @@ kiblnd_check_conns(int idx)
>         LIST_HEAD(closes);
>         LIST_HEAD(checksends);
>         struct list_head *peers = &kiblnd_data.kib_peers[idx];
> -       struct list_head *ptmp;
>         struct kib_peer *peer;
>         struct kib_conn *conn;
>         struct kib_conn *temp;
> @@ -3182,9 +3177,7 @@ kiblnd_check_conns(int idx)
>          */
>         read_lock_irqsave(&kiblnd_data.kib_global_lock, flags);
>
> -       list_for_each(ptmp, peers) {
> -               peer = list_entry(ptmp, struct kib_peer, ibp_list);
> -
> +       list_for_each_entry(peer, peers, ibp_list) {
>                 list_for_each(ctmp, &peer->ibp_conns) {
>                         int timedout;
>                         int sendnoop;
> diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> index 6b38d5a..76932e3 100644
> --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> @@ -793,12 +793,9 @@ struct ksock_route *
>  ksocknal_find_connectable_route_locked(struct ksock_peer *peer)
>  {
>         unsigned long now = cfs_time_current();
> -       struct list_head *tmp;
>         struct ksock_route *route;
>
> -       list_for_each(tmp, &peer->ksnp_routes) {
> -               route = list_entry(tmp, struct ksock_route, ksnr_list);
> -
> +       list_for_each_entry(route, &peer->ksnp_routes, ksnr_list) {
>                 LASSERT(!route->ksnr_connecting || route->ksnr_scheduled);
>
>                 /* connections being established */
> @@ -829,12 +826,9 @@ ksocknal_find_connectable_route_locked(struct ksock_peer *peer)
>  struct ksock_route *
>  ksocknal_find_connecting_route_locked(struct ksock_peer *peer)
>  {
> -       struct list_head *tmp;
>         struct ksock_route *route;
>
> -       list_for_each(tmp, &peer->ksnp_routes) {
> -               route = list_entry(tmp, struct ksock_route, ksnr_list);
> -
> +       list_for_each_entry(route, &peer->ksnp_routes, ksnr_list) {
>                 LASSERT(!route->ksnr_connecting || route->ksnr_scheduled);
>
>                 if (route->ksnr_scheduled)
> @@ -2280,13 +2274,9 @@ ksocknal_find_timed_out_conn(struct ksock_peer *peer)
>  {
>         /* We're called with a shared lock on ksnd_global_lock */
>         struct ksock_conn *conn;
> -       struct list_head *ctmp;
> -
> -       list_for_each(ctmp, &peer->ksnp_conns) {
> +       list_for_each_entry(conn, &peer->ksnp_conns, ksnc_list) {
>                 int error;
>
> -               conn = list_entry(ctmp, struct ksock_conn, ksnc_list);
> -
>                 /* Don't need the {get,put}connsock dance to deref ksnc_sock */
>                 LASSERT(!conn->ksnc_closing);
>
> diff --git a/drivers/staging/lustre/lnet/lnet/api-ni.c b/drivers/staging/lustre/lnet/lnet/api-ni.c
> index ad83503..d1e68cf 100644
> --- a/drivers/staging/lustre/lnet/lnet/api-ni.c
> +++ b/drivers/staging/lustre/lnet/lnet/api-ni.c
> @@ -269,12 +269,7 @@ static struct lnet_lnd *
>  lnet_find_lnd_by_type(__u32 type)
>  {
>         struct lnet_lnd *lnd;
> -       struct list_head *tmp;
> -
> -       /* holding lnd mutex */
> -       list_for_each(tmp, &the_lnet.ln_lnds) {
> -               lnd = list_entry(tmp, struct lnet_lnd, lnd_list);
> -
> +       list_for_each_entry(lnd, &the_lnet.ln_lnds, lnd_list) {
>                 if (lnd->lnd_type == type)
>                         return lnd;
>         }
> @@ -656,14 +651,11 @@ lnet_unprepare(void)
>  struct lnet_ni  *
>  lnet_net2ni_locked(__u32 net, int cpt)
>  {
> -       struct list_head *tmp;
>         struct lnet_ni *ni;
>
>         LASSERT(cpt != LNET_LOCK_EX);
>
> -       list_for_each(tmp, &the_lnet.ln_nis) {
> -               ni = list_entry(tmp, struct lnet_ni, ni_list);
> -
> +       list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
>                 if (LNET_NIDNET(ni->ni_nid) == net) {
>                         lnet_ni_addref_locked(ni, cpt);
>                         return ni;
> @@ -770,13 +762,10 @@ struct lnet_ni  *
>  lnet_nid2ni_locked(lnet_nid_t nid, int cpt)
>  {
>         struct lnet_ni *ni;
> -       struct list_head *tmp;
>
>         LASSERT(cpt != LNET_LOCK_EX);
>
> -       list_for_each(tmp, &the_lnet.ln_nis) {
> -               ni = list_entry(tmp, struct lnet_ni, ni_list);
> -
> +       list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
>                 if (ni->ni_nid == nid) {
>                         lnet_ni_addref_locked(ni, cpt);
>                         return ni;
> @@ -806,14 +795,11 @@ lnet_count_acceptor_nis(void)
>  {
>         /* Return the # of NIs that need the acceptor. */
>         int count = 0;
> -       struct list_head *tmp;
>         struct lnet_ni *ni;
>         int cpt;
>
>         cpt = lnet_net_lock_current();
> -       list_for_each(tmp, &the_lnet.ln_nis) {
> -               ni = list_entry(tmp, struct lnet_ni, ni_list);
> -
> +       list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
>                 if (ni->ni_lnd->lnd_accept)
>                         count++;
>         }
> @@ -1731,18 +1717,16 @@ static int
>  lnet_get_net_config(struct lnet_ioctl_config_data *config)
>  {
>         struct lnet_ni *ni;
> -       struct list_head *tmp;
>         int idx = config->cfg_count;
>         int cpt, i = 0;
>         int rc = -ENOENT;
>
>         cpt = lnet_net_lock_current();
>
> -       list_for_each(tmp, &the_lnet.ln_nis) {
> +       list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
>                 if (i++ != idx)
>                         continue;
>
> -               ni = list_entry(tmp, struct lnet_ni, ni_list);
>                 lnet_ni_lock(ni);
>                 lnet_fill_ni_info(ni, config);
>                 lnet_ni_unlock(ni);
> @@ -2103,7 +2087,6 @@ int
>  LNetGetId(unsigned int index, struct lnet_process_id *id)
>  {
>         struct lnet_ni *ni;
> -       struct list_head *tmp;
>         int cpt;
>         int rc = -ENOENT;
>
> @@ -2111,12 +2094,10 @@ LNetGetId(unsigned int index, struct lnet_process_id *id)
>
>         cpt = lnet_net_lock_current();
>
> -       list_for_each(tmp, &the_lnet.ln_nis) {
> +       list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
>                 if (index--)
>                         continue;
>
> -               ni = list_entry(tmp, struct lnet_ni, ni_list);
> -
>                 id->nid = ni->ni_nid;
>                 id->pid = the_lnet.ln_pid;
>                 rc = 0;
> diff --git a/drivers/staging/lustre/lnet/lnet/config.c b/drivers/staging/lustre/lnet/lnet/config.c
> index 26841a7..72bba89 100644
> --- a/drivers/staging/lustre/lnet/lnet/config.c
> +++ b/drivers/staging/lustre/lnet/lnet/config.c
> @@ -78,12 +78,9 @@ lnet_issep(char c)
>  int
>  lnet_net_unique(__u32 net, struct list_head *nilist)
>  {
> -       struct list_head *tmp;
>         struct lnet_ni *ni;
>
> -       list_for_each(tmp, nilist) {
> -               ni = list_entry(tmp, struct lnet_ni, ni_list);
> -
> +       list_for_each_entry(ni, nilist, ni_list) {
>                 if (LNET_NIDNET(ni->ni_nid) == net)
>                         return 0;
>         }
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
> index f9b4c0a..cefbfad 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
> @@ -63,7 +63,6 @@
>  __u64 ldlm_extent_shift_kms(struct ldlm_lock *lock, __u64 old_kms)
>  {
>         struct ldlm_resource *res = lock->l_resource;
> -       struct list_head *tmp;
>         struct ldlm_lock *lck;
>         __u64 kms = 0;
>
> @@ -73,9 +72,7 @@ __u64 ldlm_extent_shift_kms(struct ldlm_lock *lock, __u64 old_kms)
>          */
>         ldlm_set_kms_ignore(lock);
>
> -       list_for_each(tmp, &res->lr_granted) {
> -               lck = list_entry(tmp, struct ldlm_lock, l_res_link);
> -
> +       list_for_each_entry(lck, &res->lr_granted, l_res_link) {
>                 if (ldlm_is_kms_ignore(lck))
>                         continue;
>
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
> index adfc0b4..e23cdec 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
> @@ -885,12 +885,9 @@ static void search_granted_lock(struct list_head *queue,
>                                 struct ldlm_lock *req,
>                                 struct sl_insert_point *prev)
>  {
> -       struct list_head *tmp;
>         struct ldlm_lock *lock, *mode_end, *policy_end;
>
> -       list_for_each(tmp, queue) {
> -               lock = list_entry(tmp, struct ldlm_lock, l_res_link);
> -
> +       list_for_each_entry(lock, queue, l_res_link) {
>                 mode_end = list_prev_entry(lock, l_sl_mode);
>
>                 if (lock->l_req_mode != req->l_req_mode) {
> diff --git a/drivers/staging/lustre/lustre/obdclass/genops.c b/drivers/staging/lustre/lustre/obdclass/genops.c
> index 739bfb9..6d93d9c 100644
> --- a/drivers/staging/lustre/lustre/obdclass/genops.c
> +++ b/drivers/staging/lustre/lustre/obdclass/genops.c
> @@ -86,12 +86,10 @@ static void obd_device_free(struct obd_device *obd)
>
>  static struct obd_type *class_search_type(const char *name)
>  {
> -       struct list_head *tmp;
>         struct obd_type *type;
>
>         spin_lock(&obd_types_lock);
> -       list_for_each(tmp, &obd_types) {
> -               type = list_entry(tmp, struct obd_type, typ_chain);
> +       list_for_each_entry(type, &obd_types, typ_chain) {
>                 if (strcmp(type->typ_name, name) == 0) {
>                         spin_unlock(&obd_types_lock);
>                         return type;
> diff --git a/drivers/staging/lustre/lustre/obdecho/echo_client.c b/drivers/staging/lustre/lustre/obdecho/echo_client.c
> index f9808d1..172037c 100644
> --- a/drivers/staging/lustre/lustre/obdecho/echo_client.c
> +++ b/drivers/staging/lustre/lustre/obdecho/echo_client.c
> @@ -949,12 +949,10 @@ static int cl_echo_cancel0(struct lu_env *env, struct echo_device *ed,
>  {
>         struct echo_client_obd *ec = ed->ed_ec;
>         struct echo_lock       *ecl = NULL;
> -       struct list_head             *el;
>         int found = 0, still_used = 0;
>
>         spin_lock(&ec->ec_lock);
> -       list_for_each(el, &ec->ec_locks) {
> -               ecl = list_entry(el, struct echo_lock, el_chain);
> +       list_for_each_entry(ecl, &ec->ec_locks, el_chain) {
>                 CDEBUG(D_INFO, "ecl: %p, cookie: %#llx\n", ecl, ecl->el_cookie);
>                 found = (ecl->el_cookie == cookie);
>                 if (found) {
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/client.c b/drivers/staging/lustre/lustre/ptlrpc/client.c
> index b1d379a..291b9ff 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/client.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/client.c
> @@ -2202,16 +2202,12 @@ static void ptlrpc_interrupted_set(void *data)
>   */
>  int ptlrpc_set_next_timeout(struct ptlrpc_request_set *set)
>  {
> -       struct list_head *tmp;
>         time64_t now = ktime_get_real_seconds();
>         int timeout = 0;
>         struct ptlrpc_request *req;
>         time64_t deadline;
>
> -       list_for_each(tmp, &set->set_requests) {
> -               req = list_entry(tmp, struct ptlrpc_request, rq_set_chain);
> -
> -               /* Request in-flight? */
> +       list_for_each_entry(req, &set->set_requests, rq_set_chain) {
>                 if (!(((req->rq_phase == RQ_PHASE_RPC) && !req->rq_waiting) ||
>                       (req->rq_phase == RQ_PHASE_BULK) ||
>                       (req->rq_phase == RQ_PHASE_NEW)))
> --
> 2.7.4
>

Please ignore this patch as it has build errors.

