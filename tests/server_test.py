def test_get_assignments_teacher_1(client, ):
    response = client.get(
        '/',
    )

    status = response.json['status']
    assert status == 'ready'